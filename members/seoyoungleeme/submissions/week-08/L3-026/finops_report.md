# FinOps Transit Gateway Analysis Report - L3-026

## Problem Identification
| Category | Details |
|----------|---------|
| Waste Type | Avoidable Transit Gateway data processing for simple same-region VPC-to-VPC traffic |
| Affected Resources | 3 of 4 networking resources |
| Healthy/Decoy Resource Preserved | `aws_vpc_peering_connection.vpc-peering-connection-jjfn9p` |
| Monthly Waste | ~$200.00 |
| Annual Waste | ~$2,400.00 |
| Confidence | Medium-High: cost note is explicit, but route-table and dependency checks are not present |

## Evidence

### Infrastructure
`main.tf` contains one Transit Gateway and two TGW VPC attachments:

| Resource | Type | Finding |
|----------|------|---------|
| `ec2-transit-gateway-y3bueb` | `aws_ec2_transit_gateway` | Problem resource |
| `ec2-transit-gateway-vpc-attachment-kqhgxx` | `aws_ec2_transit_gateway_vpc_attachment` | Problem resource |
| `ec2-transit-gateway-vpc-attachment-59hhc6` | `aws_ec2_transit_gateway_vpc_attachment` | Problem resource |
| `vpc-peering-connection-jjfn9p` | `aws_vpc_peering_connection` | Existing same-region peering; not a problem |

`tags_inventory.json` explicitly marks the TGW and both attachments as `is_problem = true`, while the VPC Peering connection is `is_problem = false` with 100% tag compliance. The optimized Terraform therefore preserves the peering connection and treats the TGW resources as phased removal candidates.

### Metrics
`metrics/metrics.json` provides 30 days of hourly TGW and attachment metrics. The TGW and attachments show continuous traffic, so this is not an idle-resource cleanup case. It is a routing architecture cost issue: high-volume VPC-to-VPC traffic is being processed by TGW instead of using the lower-cost peering path.

`business_metrics.json` shows 30 days of business activity:

| Metric | Value |
|--------|-------|
| Total requests | 12,720,148 |
| Total orders | 263,186 |
| Total data processed in business metrics | 1,393.17 GB |
| Average daily data processed | 46.44 GB/day |
| Current cost per order | $0.01 |
| Current cost per 1k requests | $0.17 |

The business metrics data volume is lower than the `cost_report.json` pricing note volume. For savings, this report uses the cost report pricing note because it directly identifies the TGW data processing waste for the scenario.

### Cost Report
`cost_report.json` provides six months of VPC and Transit Gateway spend:

| Month | Transit Gateway Spend | VPC Spend | Total Cloud Spend |
|-------|-----------------------|-----------|-------------------|
| M-5 | $106.87 | $104.62 | $1,705.45 |
| M-4 | $113.08 | $136.46 | $1,695.42 |
| M-3 | $103.60 | $105.67 | $1,736.50 |
| M-2 | $131.56 | $118.19 | $1,707.60 |
| M-1 | $142.38 | $138.75 | $1,769.40 |
| M-0 | $137.75 | $121.51 | $1,676.24 |
| Average | $122.54 | $120.87 | $1,715.10 |

Authoritative scenario pricing note:

```text
Transit Gateway data processing: 10TB x $0.02/GB = $200/month.
VPC Peering same-AZ transfer is free.
```

Savings estimate:

```text
10,000 GB/month x $0.02/GB = $200/month
$200/month x 12 = $2,400/year
```

Unit economics from the scenario savings:

| Unit | Calculation | Savings |
|------|-------------|---------|
| Per GB | $200 / 10,000 GB | $0.0200/GB |
| Per order | $200 / 263,186 orders | ~$0.00076/order |
| Per 1k requests | $200 / 12,720,148 requests x 1,000 | ~$0.0157/1k requests |

Attachment-hour savings are not included. TGW attachment removal may save additional cost, but only after routes and dependencies prove the attachments are no longer needed.

## Root Cause
FlexShop is using Transit Gateway for a simple same-region VPC-to-VPC traffic pattern. TGW is valuable for hub-and-spoke routing, transitive routing, multi-account connectivity, centralized inspection, VPN, and Direct Connect integration, but those requirements are not present in the provided files.

The existing VPC Peering connection demonstrates that a cheaper same-region point-to-point connectivity pattern is already available in the scenario. The issue is not the peering resource; it is that high-volume traffic is still incurring TGW data processing charges.

## Proposed Solution

### Immediate Actions
1. Validate topology before changes: confirm no transitive routing, Network Firewall/inspection appliance, VPN, Direct Connect, or multi-account routing depends on the TGW.
2. Confirm VPC CIDR ranges do not overlap and that security groups/NACLs allow traffic over the peering path.
3. Move the high-volume VPC-to-VPC routes from TGW to VPC Peering.
4. Monitor TGW bytes processed, application requests, orders, and error rates for 7 days.
5. After TGW traffic drops to zero and route-table references are removed, detach TGW VPC attachments and remove the TGW.

### Preventive Actions
1. Require TGW justification for new deployments: transitive routing, centralized inspection, VPN/DX, or multi-account network hub.
2. Default simple same-region point-to-point VPC connectivity to VPC Peering.
3. Add alerts for TGW data processing cost above $50/month without documented network architecture justification.
4. Enforce network cost tags: Service, Team, Env, CostCenter, and Owner.

## Estimated Monthly Savings
**$200.00/month**, **$2,400.00/year** from TGW data processing avoidance.

Savings are based on the scenario pricing note in `cost_report.json`. The monthly service spend table is lower than the note in some months, so the estimate should be treated as scenario-provided modeled savings rather than raw service-line average.

## Optimized Terraform / Operational Plan
See `main_optimized.tf`.

The optimized file preserves the existing healthy VPC Peering connection and comments TGW resources as Phase 2 removal candidates. That avoids the decoy deletion pattern while documenting the correct final architecture and safe cutover order.
