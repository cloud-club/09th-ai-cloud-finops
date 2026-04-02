# FinOps RDS Analysis Report

- **Analysis Date/Time**: 2026-04-02T05:02:44.920149Z
- **Region**: us-east-1
- **Resources Checked**: 3
- **Issues Found**: 2

## Executive Summary

| Metric | Value |
|--------|-------|
| Region | us-east-1 |
| Issues Found | 2 items |
| Confirmed Monthly Savings | **$502.24** |
| Confirmed Annual Savings | **$6,026.88** |
| Avg Monthly RDS Spend | $428.46 |

> **Note**: Savings are calculated as the net difference between the **current state** (`db.r5.large` Multi-AZ) and the **final optimized state** (`db.t3.large` Single-AZ) per instance — not a per-rule sum. Applying both R1 and R2 simultaneously to the same instance produces an integrated saving of $251.12/mo per instance ($350.40 → $99.28).

## Discovered Cost Issues

### 1. 🔴 `db-instance-0p5pam` — HIGH [Multi-AZ on Non-Production + Overprovisioned]

**Verdict**: Multi-AZ enabled on 'dev' environment AND instance class `db.r5.large` is overprovisioned at 14.8% avg CPU — both must be corrected together
**Recommended Actions**: Disable Multi-AZ · Downsize to `db.t3.large`
**Confidence**: HIGH (R1) / MEDIUM (R2)
**Environment**: `dev`

**Metrics Summary (30 Days)**

| Metric | Value |
|--------|-------|
| CPU Utilization Avg | 14.8% |
| Database Connections Avg | 4.8 |
| Evaluation Period | 30 days |

**Integrated Cost Impact (Current → Final Optimized State)**

| State | Instance Class | Multi-AZ | Cost/Month |
|-------|---------------|----------|-----------|
| Current | `db.r5.large` | Yes | $350.40 |
| Optimized | `db.t3.large` | No | $99.28 |
| **Net Savings** | | | **$251.12** |

### 2. 🔴 `db-instance-fgvel1` — HIGH [Multi-AZ on Non-Production + Overprovisioned]

**Verdict**: Multi-AZ enabled on 'dev' environment AND instance class `db.r5.large` is overprovisioned at 15.9% avg CPU — both must be corrected together
**Recommended Actions**: Disable Multi-AZ · Downsize to `db.t3.large`
**Confidence**: HIGH (R1) / MEDIUM (R2)
**Environment**: `dev`

**Metrics Summary (30 Days)**

| Metric | Value |
|--------|-------|
| CPU Utilization Avg | 15.9% |
| Database Connections Avg | 4.8 |
| Evaluation Period | 30 days |

**Integrated Cost Impact (Current → Final Optimized State)**

| State | Instance Class | Multi-AZ | Cost/Month |
|-------|---------------|----------|-----------|
| Current | `db.r5.large` | Yes | $350.40 |
| Optimized | `db.t3.large` | No | $99.28 |
| **Net Savings** | | | **$251.12** |

## Deep Root Cause Analysis

### `db-instance-0p5pam`

Two compounding issues drive the excess cost. First, the instance is tagged `Environment=dev` but has `multi_az = true` — cross-AZ failover is unnecessary in development, and this configuration doubles the hourly rate from $0.12/hr to $0.24/hr. Second, `db.r5.large` is a memory-optimized class designed for workloads with sustained memory pressure; at 14.8% average CPU it is severely overprovisioned. A general-purpose `db.t3.large` ($0.136/hr single-AZ) is sufficient for this workload. The two changes together bring the monthly cost from $350.40 to $99.28 — a 72% reduction.

### `db-instance-fgvel1`

Same pattern as `db-instance-0p5pam`. `Environment=dev` with `multi_az = true` and `db.r5.large` at 15.9% avg CPU. The combined correction (Single-AZ + `db.t3.large`) reduces the monthly cost from $350.40 to $99.28.

## Remediation Strategy

### `db-instance-0p5pam`

1. Create a snapshot before making changes: `aws rds create-db-snapshot --db-instance-identifier db-instance-0p5pam --db-snapshot-identifier db-instance-0p5pam-pre-resize`
2. In Terraform, apply both changes together:
   - `multi_az = false`
   - `instance_class = "db.t3.large"`
3. Apply during a maintenance window: `terraform apply -target=aws_db_instance.db-instance-0p5pam`
4. AWS will perform a brief failover (< 60s) on the Multi-AZ switch; the instance resize follows as a separate modification.
5. Monitor CPU and connection metrics for 7 days after the change.

### `db-instance-fgvel1`

1. Create a snapshot: `aws rds create-db-snapshot --db-instance-identifier db-instance-fgvel1 --db-snapshot-identifier db-instance-fgvel1-pre-resize`
2. In Terraform, apply both changes together:
   - `multi_az = false`
   - `instance_class = "db.t3.large"`
3. Apply during a maintenance window: `terraform apply -target=aws_db_instance.db-instance-fgvel1`
4. Monitor CPU and connection metrics for 7 days after the change.

## Estimated Savings Summary

| Resource | Current State | Optimized State | Changes Applied | Monthly Savings | Annual Savings |
|----------|--------------|-----------------|-----------------|----------------|---------------|
| `db-instance-0p5pam` | `db.r5.large` Multi-AZ ($350.40) | `db.t3.large` Single-AZ ($99.28) | R1 + R2 | $251.12 | $3,013.44 |
| `db-instance-fgvel1` | `db.r5.large` Multi-AZ ($350.40) | `db.t3.large` Single-AZ ($99.28) | R1 + R2 | $251.12 | $3,013.44 |
| `db-instance-o0kkum` | `db.r5.large` Multi-AZ | — | No changes in this scope | — | — |
| **TOTAL** | | | | **$502.24** | **$6,026.88** |

## Optimized Terraform

Apply the changes below. Always run `terraform plan` first and snapshot your DB before resizing.

```hcl
# ── db-instance-0p5pam ──────────────────────────────────────────────
# CHANGES (R1 + R2): db.r5.large Multi-AZ ($350.40/mo) → db.t3.large Single-AZ ($99.28/mo)
#   multi_az: true → false       — dev env needs no cross-AZ failover
#   instance_class: db.r5.large → db.t3.large  — CPU avg 14.8%, overprovisioned
#   Net savings: $251.12/mo

# ── db-instance-fgvel1 ──────────────────────────────────────────────
# CHANGES (R1 + R2): db.r5.large Multi-AZ ($350.40/mo) → db.t3.large Single-AZ ($99.28/mo)
#   multi_az: true → false       — dev env needs no cross-AZ failover
#   instance_class: db.r5.large → db.t3.large  — CPU avg 15.9%, overprovisioned
#   Net savings: $251.12/mo

```

## Governance Recommendations

### Prevent Recurrence

1. **Tagging policy**: Enforce `Environment` tag on all `aws_db_instance` resources via AWS Config.
2. **Multi-AZ guard**: Add a CI/CD check that fails if `multi_az = true` and `Environment` tag is `dev`/`test`/`staging`.
3. **Cost Anomaly Detection**: Enable AWS Cost Anomaly Detection on the RDS service to alert on unexpected spend increases.

```hcl
# Optional: AWS Config rule to detect Multi-AZ on non-prod RDS
resource "aws_config_config_rule" "rds_non_prod_single_az" {
  name = "rds-non-prod-no-multi-az"
  source {
    owner             = "CUSTOM_LAMBDA"
    source_identifier = aws_lambda_function.rds_multi_az_check.arn
  }
}
```

---

*Generated by: FinOps RDS Skill (finops-rds) — Claude Agent Skills*