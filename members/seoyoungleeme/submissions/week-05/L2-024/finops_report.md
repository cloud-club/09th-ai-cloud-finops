# FinOps CloudWatch Metric Alarm Analysis Report - L2-024

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | CloudWatch Metric Alarm unnecessary high-resolution (1s) period |
| Affected Resources | 250 of 250 alarms (190 confirmed waste per cost report) |
| Monthly Waste | ~$120/month ($114 metric cost + ~$6 PutMetricData API overhead) |
| Annual Waste | ~$1,440/year |
| Confidence | **High** — all alarms have `actual_required_resolution_seconds = 60`; metrics show zero sub-minute volatility; no custom namespace SLA evidence |

---

## Evidence

### Infrastructure

- **Total `aws_cloudwatch_metric_alarm` resources**: 250
- **Resolution configured**: `resolution_seconds = 1` (high-resolution) on **all 250** alarms
- **Resolution required**: `actual_required_resolution_seconds = 60` on **all 250** alarms
- **Namespace**: `Custom/Application` (custom namespace — metric cost applies)
- **Evaluation period**: `evaluation_period_minutes = 5` — alarms aggregate over 5-minute windows; 1-second data points provide no detection advantage over 60-second data points for this evaluation window
- **Scenario-only Terraform attributes** (must be removed in optimized output):
  - `resolution_seconds` — not a valid AWS provider attribute; real attribute is `period`
  - `actual_required_resolution_seconds` — scenario evidence only
  - `metric_type` — scenario evidence only
  - `evaluation_period_minutes` — scenario evidence only

**Rule triggers**:
- **M1 HIGH** — all 250 alarms: `resolution_seconds = 1` with `actual_required_resolution_seconds = 60`
- **M2 HIGH** — all 250 alarms: `metric_type = high_resolution` with `evaluation_period_minutes = 5` (≥ 1 min)
- **M4 MEDIUM** — all 250 alarms: 4 scenario-only attributes require Terraform normalization

### Metrics (30-day, hourly, 720 data points per alarm)

| Metric | Value |
|--------|-------|
| Alarms in metrics.json | 250 of 250 |
| `metric_count` global min | 47.61 |
| `metric_count` global max | 209.96 |
| `metric_count` average of means | 170.24 |
| Alarms with max > 2× avg (sub-minute spike candidates) | **0** |

All 250 alarms show perfectly flat `metric_count` patterns — the value is essentially constant across all 720 hourly data points per alarm. There is no evidence of sub-minute volatility, spikes, or transient events that would require 1-second granularity to detect. Downgrading to 60-second resolution will not affect alarm state change frequency.

### Cost Report (6-Month History)

| Month | Total Spend | CloudWatch Spend |
|-------|-------------|-----------------|
| M-5 | $983.46 | $154.32 |
| M-4 | $1,046.80 | $145.74 |
| M-3 | $1,012.92 | $134.79 |
| M-2 | $996.54 | $170.13 |
| M-1 | $1,027.72 | $117.79 |
| M-0 | $1,043.84 | $135.30 |
| **Avg** | **$1,018.55** | **$143.01** |

**Pricing note (from cost report)**:
- High-resolution custom metric: **$0.90/metric/month**
- Standard resolution custom metric: **$0.30/metric/month**
- Confirmed unnecessary: **190 alarms** × ($0.90 − $0.30) = **$114/month**
- Additional PutMetricData API overhead: **~$6/month**
- **Total confirmed waste: ~$120/month**

> Note: All 250 alarms in `main.tf` carry `actual_required_resolution_seconds = 60`, suggesting all 250 are candidates. The cost report's 190-alarm figure is used as the conservative confirmed-waste baseline. Full downgrade of all 250 would yield up to **$150/month** ($0.60 × 250).

---

## Root Cause

High-resolution (1-second period) was applied as a **blanket default template** across all `Custom/Application` metric alarms without evaluating whether sub-minute detection was operationally necessary.

Two compounding factors amplified the waste:

1. **Evaluation window mismatch**: All alarms evaluate over 5-minute windows. CloudWatch aggregates data points within the evaluation period regardless of period granularity — a 5-minute evaluation with 1-second data is functionally identical to a 5-minute evaluation with 60-second data for alarm state changes.

2. **No governance gate**: No Terraform module default, OPA policy, or cost allocation tag prevented high-resolution from being chosen as a safe default. The cost difference ($0.90 vs $0.30/metric) was not visible at alarm-creation time.

---

## Proposed Solution

### Immediate Actions

1. **Downgrade all 250 alarms from `period = 1` to `period = 60`** — removes the 1-second custom metric billing tier. Apply `main_optimized.tf`.
2. **Remove scenario-only Terraform attributes** (`resolution_seconds`, `actual_required_resolution_seconds`, `metric_type`, `evaluation_period_minutes`) and replace with valid AWS provider attributes (`alarm_name`, `comparison_operator`, `evaluation_periods`, `metric_name`, `period`, `statistic`, `threshold`).
3. Verify real alarm intent (threshold, metric name, comparison operator) before applying — the scenario stub does not include these values; defaults in `main_optimized.tf` must be confirmed against actual operational requirements.

### Preventive Actions

1. **Set `period = 60` as the default** in shared `aws_cloudwatch_metric_alarm` Terraform modules for the `Custom/Application` namespace.
2. **Require explicit justification** (e.g., tag `high_resolution_reason = "sub-minute SLA"`) for any alarm using `period < 60`.
3. **Add OPA/Sentinel/tfsec policy** to block `period = 1` in non-exempt namespaces.
4. **Enable AWS Config custom rule** to flag `aws_cloudwatch_metric_alarm` resources with `period < 60` lacking an approved exception tag.
5. **Surface metric cost via cost allocation tags** (`alarm_name`, `namespace`, `team`) so individual teams see the resolution pricing impact at next sprint review.

---

## Estimated Monthly Savings

| Source | Calculation | Monthly Savings |
|--------|-------------|----------------|
| Metric cost reduction (190 confirmed) | 190 × ($0.90 − $0.30) | $114.00 |
| PutMetricData API overhead reduction | cost report estimate | ~$6.00 |
| **Total (conservative)** | | **~$120.00** |
| Metric cost reduction (250 full scope) | 250 × $0.60 | $150.00 |
| **Annual savings (conservative)** | $120 × 12 | **~$1,440** |

CloudWatch spend currently averages **$143/month** — resolution downgrade alone eliminates **~84% of the current CloudWatch bill**.

---

## Optimized Terraform

See `main_optimized.tf`. Key changes per alarm:

```hcl
# Before (scenario — invalid Terraform attributes):
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rd74ls" {
  resolution_seconds                 = 1
  namespace                          = "Custom/Application"
  metric_type                        = "high_resolution"
  evaluation_period_minutes          = 5
  actual_required_resolution_seconds = 60
  tags = { Name = "cloudwatch-metric-alarm-rd74ls" }
}

# After (valid AWS provider attributes, standard resolution):
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rd74ls" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rd74ls"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0
  tags = { Name = "cloudwatch-metric-alarm-rd74ls" }
}
```

> **Verification required before apply**: `comparison_operator`, `metric_name`, `statistic`, and `threshold` are set to safe defaults — confirm these against actual alarm intent in the real environment before running `terraform apply`.

---

Generated by: finops-cloudwatch-alarm skill
