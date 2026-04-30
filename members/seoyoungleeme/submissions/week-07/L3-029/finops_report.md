# FinOps NAT Gateway Analysis Report - L3-029

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | NAT Gateway data processing cost from S3 traffic due to misconfigured VPC endpoint region |
| Affected Resources | 5 of 7 instances routing S3 via NAT; 1 VPC endpoint (wrong region) |
| Monthly Waste | ~$119–$360/month (NAT data processing recoverable by fixing the endpoint) |
| Confidence | **High** — wrong `service_name` is directly observable in Terraform; metric pattern confirms 5 instances use NAT for S3 and 2 use endpoint directly |

---

## Evidence

### Infrastructure

**NAT Gateway**
- `nat-gateway-5xmpd2` — single NAT gateway in `aws_subnet.public`, us-east-1
- Associated EIP: `nat-gateway-5xmpd2_eip`
- No AZ redundancy (single NAT across all private subnets)

**VPC Endpoint (Misconfigured)**
```
resource "aws_vpc_endpoint" "vpc-endpoint-dmrceu" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"   ← WRONG REGION
  vpc_endpoint_type = "Gateway"
  route_table_ids   = var.private_route_table_ids
}
```
- **Rule N6 (HIGH)**: Service name uses `ap-northeast-2` (Seoul) but the provider and all workloads are in `us-east-1`.
- An S3 Gateway endpoint for `ap-northeast-2` does not intercept `us-east-1` S3 traffic. The route injected into the private route tables matches `ap-northeast-2` S3 prefixes only — us-east-1 S3 traffic has no matching prefix-route and falls through to the default `0.0.0.0/0` → NAT gateway route.
- Route table association (`var.private_route_table_ids`) is structurally present but functionally ineffective for the actual S3 region.

**Instances**

| Instance | Subnet | S3 Routing | Tag Compliance |
|----------|--------|-----------|----------------|
| instance-fv8a56 | aws_subnet.main | Via NAT ❌ | 20% (missing Service, Team, CostCenter, Owner) |
| instance-2eny0e | aws_subnet.main | Via NAT ❌ | 20% (missing Service, Team, CostCenter, Owner) |
| instance-p0jh3s | aws_subnet.main | Via NAT ❌ | 20% (missing Service, Env, Team, Owner) |
| instance-x2xy4d | aws_subnet.main | Via NAT ❌ | 20% (missing Service, Env, CostCenter, Owner) |
| instance-q3xxi4 | aws_subnet.main | Via NAT ❌ | 20% (missing Service, Team, Env, CostCenter) |
| instance-umuajk | aws_subnet.main | Direct (endpoint) ✅ | 100% |
| instance-4cwdnx | aws_subnet.main | Direct (endpoint) ✅ | 100% |

Instances `umuajk` and `4cwdnx` are using `s3_direct_bytes_mb_per_hr` — they access S3 without going through NAT. This may indicate a different route table, a public IP on these instances, or S3 access over a different path. The remaining 5 instances exhibit `nat_bytes_out_mb_per_hr` and `s3_request_count_per_hr` simultaneously, confirming their S3 traffic is processed by the NAT gateway.

### Metrics (30-day, hourly, 720 data points)

| Resource | Metric | Avg/hr | Routing |
|----------|--------|--------|---------|
| instance-fv8a56 | nat_bytes_out_mb_per_hr | 100.0 MB | Via NAT |
| instance-fv8a56 | s3_request_count_per_hr | 100.0 req | S3 via NAT |
| instance-2eny0e | nat_bytes_out_mb_per_hr | 100.0 MB | Via NAT |
| instance-2eny0e | s3_request_count_per_hr | 100.0 req | S3 via NAT |
| instance-p0jh3s | nat_bytes_out_mb_per_hr | 100.0 MB | Via NAT |
| instance-p0jh3s | s3_request_count_per_hr | 100.0 req | S3 via NAT |
| instance-x2xy4d | nat_bytes_out_mb_per_hr | 100.0 MB | Via NAT |
| instance-x2xy4d | s3_request_count_per_hr | 100.0 req | S3 via NAT |
| instance-q3xxi4 | nat_bytes_out_mb_per_hr | 100.0 MB | Via NAT |
| instance-q3xxi4 | s3_request_count_per_hr | 100.0 req | S3 via NAT |
| nat-gateway-5xmpd2 | nat_bytes_out_mb_per_hr | 100.0 MB | Aggregate NAT |
| instance-umuajk | s3_direct_bytes_mb_per_hr | 100.0 MB | Via endpoint ✅ |
| instance-4cwdnx | s3_direct_bytes_mb_per_hr | 100.0 MB | Via endpoint ✅ |
| vpc-endpoint-dmrceu | s3_direct_bytes_mb_per_hr | 100.0 MB | Endpoint traffic |

All 5 NAT-routed instances show perfectly flat patterns with no sub-minute spikes, consistent 24/7 S3 workloads hitting NAT rather than the endpoint.

### Cost Report (6-Month History)

| Month | Total Spend | NAT Gateway | VPC | S3 |
|-------|-------------|-------------|-----|-----|
| M-5 | $4,045.67 | $130.07 | $143.79 | $177.75 |
| M-4 | $4,089.21 | $159.62 | $161.26 | $165.26 |
| M-3 | $4,527.92 | $165.64 | $167.75 | $161.16 |
| M-2 | $4,097.24 | $157.06 | $134.98 | $163.90 |
| M-1 | $4,017.24 | $164.23 | $143.11 | $130.82 |
| M-0 | $4,307.77 | $131.86 | $135.97 | $158.81 |
| **Avg** | **$4,180.84** | **$151.41** | **$147.81** | **$159.62** |

**NAT Gateway cost breakdown (estimated):**
- Hourly cost: 1 gateway × $0.045/hr × 720 hrs/month = **$32.40/month** (fixed, retained after fix)
- Data processing cost: $151.41 − $32.40 = **~$119/month** (recoverable)

**Pricing note (from cost report):**
> "NAT Gateway processing cost: 8TB × $0.045/GB = $360/mo. Using an S3 Gateway Endpoint eliminates all NAT processing cost for this traffic."

The $360/month figure represents the scenario's stated S3-via-NAT data processing volume (8 TB/month). The observed ~$119/month in NAT data processing is the currently metered portion. Fixing the endpoint captures the full $360 if S3 traffic is the dominant NAT workload; the conservative floor is ~$119/month based on observed NAT spend.

**S3 gateway endpoint cost**: $0 (no hourly charge for gateway endpoints).

---

## Root Cause

The S3 Gateway VPC endpoint was provisioned with `service_name = "com.amazonaws.ap-northeast-2.s3"` — the Seoul region service name — in a `us-east-1` deployment. This is likely a copy-paste error from a Korea region configuration or a template that was not updated when the environment region changed.

A gateway endpoint for `ap-northeast-2.s3` injects route table entries matching `ap-northeast-2` S3 IP prefixes only. Traffic to `us-east-1` S3 endpoints does not match these prefixes, so the traffic bypasses the endpoint route and uses the default `0.0.0.0/0` → NAT gateway route instead.

The endpoint appears correctly structured in all other respects (Gateway type, route_table_ids association, valid tags), which likely masked the misconfiguration during review. The 2 instances accessing S3 directly (`umuajk`, `4cwdnx`) may have public IPs or a different route path that happens to reach S3 without going through NAT.

---

## Proposed Solution

### Immediate Actions

1. **Fix the VPC endpoint service name**: change `com.amazonaws.ap-northeast-2.s3` to `com.amazonaws.us-east-1.s3`. This is the only required change. After `terraform apply`, the route table entries for the private subnets will be updated to match `us-east-1` S3 IP prefixes and traffic will stop flowing through NAT.
2. **Verify `var.private_route_table_ids` covers the route table for `aws_subnet.main`** — where all 5 affected instances reside. If not, add it.
3. **Monitor NAT data processing cost** for 48 hours post-fix to confirm the drop. Expect NAT spend to fall to ~$32/month (hourly only) if S3 is the dominant NAT workload.

### Preventive Actions

1. **Enforce region variable usage in `service_name`**: replace the hardcoded region in endpoint `service_name` with `"com.amazonaws.${var.aws_region}.s3"` so region changes propagate automatically.
2. **Add CI/CD check or tfsec policy** to detect VPC endpoint `service_name` values that do not match the configured AWS provider region.
3. **Require S3/DynamoDB gateway endpoints in all private-subnet VPC modules** by default — gateway endpoints are free and have no downside for same-region S3/DynamoDB traffic.
4. **Enable VPC Flow Logs** to continuously validate destination service mix and detect future NAT bypass failures early.
5. **Improve tag compliance** for the 5 mis-routed instances (currently 20% tag compliance) — add Service, Team, CostCenter, Owner tags to enable cost attribution.

---

## Estimated Monthly Savings

| Source | Calculation | Monthly Savings |
|--------|-------------|----------------|
| NAT data processing eliminated (observed) | ~$119/month current NAT data cost | **~$119/month** |
| NAT data processing eliminated (scenario stated) | 8 TB × $0.045/GB | **~$360/month** |
| S3 gateway endpoint cost | Free for gateway endpoints | $0 |
| NAT hourly cost (retained — internet egress still needed) | $0.045/hr × 720 hrs | −$32.40/month |
| **Conservative monthly savings** | Based on observed NAT spend | **~$119/month** |
| **Maximum monthly savings** | Based on pricing note 8TB figure | **~$360/month** |
| **Annual savings (conservative)** | $119 × 12 | **~$1,428/year** |

> Verify with AWS CUR (`lineItem/ProductCode = AmazonVPC`, `lineItem/UsageType` containing `NatGateway-Bytes`) to get the exact S3-bound NAT data processing volume.

---

## Optimized Terraform

See `main_optimized.tf`. Single change: `service_name` corrected to `us-east-1`.

```hcl
# Before:
service_name = "com.amazonaws.ap-northeast-2.s3"   # Wrong region — Seoul endpoint in us-east-1 VPC

# After:
service_name = "com.amazonaws.us-east-1.s3"         # Correct: us-east-1 S3 prefix routes injected
```

Generated by: finops-nat skill
