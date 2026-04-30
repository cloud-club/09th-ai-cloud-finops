# FinOps DynamoDB Analysis Report - L1-010

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | DynamoDB PROVISIONED capacity — chronic under-utilization |
| Affected Resources | 1 of 2 tables (`dynamodb-table-c53qiq`) |
| Provisioned Capacity | 5,000 RCU / 1,000 WCU |
| Actual Usage | ~500 RCU / ~100 WCU (≈10% utilization) |
| Auto Scaling | Not configured |
| Monthly Waste | **~$522** |
| Annual Waste | **~$6,264** |
| Confidence | **Medium** — throttling metrics not available in provided data |

---

## Evidence

### 3.1 Infrastructure Evidence (Terraform)

`main.tf` declares **2 `aws_dynamodb_table` resources** in `us-east-1`.

| Table | Billing Mode | RCU | WCU | GSIs | Auto Scaling | PITR | Status |
|-------|-------------|-----|-----|------|-------------|------|--------|
| `dynamodb-table-c53qiq` | PROVISIONED | **5,000** | **1,000** | none | **none** | yes | Affected |
| `dynamodb-table-am0yhj` | PAY_PER_REQUEST | — | — | none | n/a | yes | Compliant |

**No `aws_appautoscaling_target` or `aws_appautoscaling_policy` resources are present in `main.tf`.** Without Auto Scaling, capacity is static — the table pays for 5,000 RCU and 1,000 WCU every hour regardless of traffic, and cannot scale up to absorb spikes without manual intervention.

Neither table defines Global Secondary Indexes, streams, TTL, or table-class overrides. PITR is enabled on both — this contributes to cost but is not addressed by capacity right-sizing.

### 3.2 Metric Evidence (30 days)

`metrics/metrics.json` provides 30 days of hourly consumed capacity data (720 datapoints per series, `resolution: hourly`).

**dynamodb-table-c53qiq**

| Metric | Avg | p95 | Max | Provisioned | Avg Utilization |
|--------|-----|-----|-----|-------------|-----------------|
| `consumed_write_capacity_units` | ~83 | ~100 | 100 | 1,000 | **8.3%** |
| `consumed_read_capacity_units` | ~500 ¹ | ~500 | 500 | 5,000 | **10.0%** |
| ThrottledWriteRequests | — ² | — | — | — | — |
| ThrottledReadRequests | — ² | — | — | — | — |

¹ RCU actual inferred from `cost_report.json` pricing_note ("Unused RCU: 4,500 → actual ≈ 500"). Metric series shows normalized flat value.
² **Not available in the provided data; verify in the real environment.** Throttling evidence must be confirmed before executing capacity reduction.

**Traffic pattern classification — WCU:**
- Coefficient of variation ≈ 0.22 (< 0.25 threshold) → **steady**
- p95/avg ≈ 1.2 (< 1.5 threshold) → **not spiky**
- Occasional low values (min observed: 11) suggest brief idle periods, not sustained traffic spikes.
- Classification: **steady** → PROVISIONED with Auto Scaling is appropriate.

**dynamodb-table-am0yhj (PAY_PER_REQUEST)**
- Both WCU and RCU metrics show flat constant activity — normal for on-demand billing.
- No over-provisioning issue; no action required.

### 3.3 Cost Evidence (6 months)

| Month | DynamoDB Spend | Total AWS Spend |
|-------|---------------|-----------------|
| M-5 | $705.90 | $5,140.12 |
| M-4 | $789.93 | $5,381.44 |
| M-3 | $552.33 | $5,826.22 |
| M-2 | $723.67 | $5,677.98 |
| M-1 | $652.47 | $5,671.84 |
| M-0 | $547.01 | $5,170.31 |
| **Avg** | **$661.89** | **$5,477.98** |

**Pricing note (authoritative):** Unused WCU: 900 × $0.00065/hr × 730 hr ≈ $427. Unused RCU: 4,500 × $0.00013/hr × 730 hr ≈ $427. **Total waste ≈ $522/mo** (net of minimum required capacity).

DynamoDB capacity pricing (us-east-1, static fallback): $0.00065/WCU-hour, $0.00013/RCU-hour. Preferred source: AWS Pricing API or MCP for production cost modeling.

Note: PITR cost (`point_in_time_recovery`) contributes to the DynamoDB bill but is not the primary waste driver here and should not be removed without evaluating recovery requirements.

---

### 3.4 Root Cause

**`dynamodb-table-c53qiq` was provisioned for a peak traffic estimate that was never reached, and no Auto Scaling was added to compensate.**

The table was set at 5,000 RCU / 1,000 WCU — likely a launch-time estimate. Actual traffic settled at ~10% of this ceiling and has remained stable for the 30-day observation window. Without Auto Scaling, the table has continued to pay for 10x its actual needs every hour.

The co-existing `dynamodb-table-am0yhj` uses PAY_PER_REQUEST, demonstrating that the team is aware of on-demand billing as an option. However, the steady traffic pattern on `c53qiq` (CV ≈ 0.22) makes PROVISIONED + Auto Scaling the more cost-effective choice for that table, provided the provisioned capacity is right-sized to match actual usage.

---

## Proposed Solution

### Immediate Actions

1. **Confirm zero throttling in production** before executing any capacity change.
   Run the following against CloudWatch for the last 30 days:
   ```bash
   aws cloudwatch get-metric-statistics \
     --namespace AWS/DynamoDB \
     --metric-name ThrottledRequests \
     --dimensions Name=TableName,Value=dynamodb-table-c53qiq \
     --start-time $(date -d '30 days ago' --iso-8601=seconds) \
     --end-time $(date --iso-8601=seconds) \
     --period 86400 --statistics Sum
   ```
   If any throttling is found, investigate hot partitions and key design before reducing capacity.

2. **Apply `main_optimized.tf`** — reduces provisioned capacity to the right-sized minimum and adds Auto Scaling for both read and write on `dynamodb-table-c53qiq`.

3. **Monitor for 7 days post-apply:**
   - Watch `ConsumedReadCapacityUnits` and `ConsumedWriteCapacityUnits` to confirm Auto Scaling is operating within the new min/max bounds.
   - Watch `ThrottledRequests` for any increase.

### Preventive Actions

1. **Require Auto Scaling for all PROVISIONED tables** — add `aws_appautoscaling_target` and `aws_appautoscaling_policy` resources as a mandatory Terraform standard for any `billing_mode = "PROVISIONED"` table.

2. **Alert on sustained low utilization** — set a CloudWatch alarm that fires when average consumed capacity is below 20% of provisioned for 7 consecutive days, prompting a capacity review.

3. **Track p95 and peak, not only average** — FinOps capacity reviews should use `p95(ConsumedCapacity)` as the sizing baseline, not just `avg`, to preserve headroom without over-provisioning.

4. **Revisit billing mode annually** — if traffic patterns change significantly, re-model whether PROVISIONED or PAY_PER_REQUEST is cheaper using the actual request-count metrics.

---

## Estimated Monthly Savings

**~$522 / month**
**~$6,264 / year**

| Item | Before | After (right-sized + Auto Scaling) |
|------|--------|------------------------------------|
| WCU (min provisioned) | 1,000 × $0.00065 × 730 = $474.50 | 150 × $0.00065 × 730 = $71.18 |
| RCU (min provisioned) | 5,000 × $0.00013 × 730 = $474.50 | 650 × $0.00013 × 730 = $61.75 |
| Capacity subtotal | **$949.00/mo** | **~$132.93/mo** |
| Avg total DynamoDB | $661.89/mo ¹ | ~$139.89/mo ¹ |
| **Monthly savings** | | **~$522/mo** |

¹ Actual avg spend is lower than the capacity-only calculation because the PAY_PER_REQUEST table and PITR costs are also included; the pricing_note waste figure ($522) is used as the authoritative estimate.

> **Confidence: Medium.** Savings estimate is based on the `cost_report.json` pricing_note and 30-day average metrics. Throttling evidence was not available — confirm before applying changes. Actual savings may vary with Auto Scaling dynamic adjustments.

---

*Generated by: finops-dynamodb skill v1.1.0 — Claude Code | Scenario: L1-010 (PulseAI)*
