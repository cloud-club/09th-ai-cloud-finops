# FinOps Organizations Analysis Report - L3-034

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | Missed consolidated billing — 10 accounts running outside RI/SP sharing scope |
| Affected Accounts | 10 of 10 (all) |
| Organization | organization-bg5imo (enterprise tier, consolidated_billing = true, but accounts not enrolled) |
| Individual RI/SP Coverage | 12% RI avg, 4% SP avg per account |
| Organization Combined Coverage (potential) | 65% RI, 20% SP if enrolled |
| Monthly Waste | **~$3,000** (authoritative) |
| Annual Waste | **~$36,000** |
| Confidence | **High** — cost_report.json pricing_note provides authoritative 20% savings on $15,000/mo; individual coverage vs. pooled coverage gap confirms isolated purchasing architecture |

---

## Evidence

### 3.1 Infrastructure and Account Evidence

`main.tf` declares **10 `aws_account`** resources and **1 `aws_organization`** (`organization-bg5imo`) in `us-east-1`.

**Organization:**

| Attribute | Value |
|-----------|-------|
| Consolidated billing | `true` |
| Volume discount tier | `enterprise` |
| Combined RI coverage (if enrolled) | 65% |
| Combined SP coverage (if enrolled) | 20% |
| Estimated savings percent | 20% |

**Individual accounts — all have `consolidated_billing = false`:**

| Account | Alias | Monthly Spend | RI Coverage | SP Coverage | Tag Compliance |
|---------|-------|--------------|-------------|-------------|---------------|
| account-5sr559 | team-alpha | $1,800 | 25% | 0% | 20% |
| account-xgc1ls | team-beta | $2,200 | 30% | 10% | 20% |
| account-4dwi3q | team-gamma | $1,500 | 20% | 0% | 20% |
| account-6xbfg6 | team-delta | $1,200 | 0% | 15% | 20% |
| account-4yh2uj | team-epsilon | $1,600 | 10% | 0% | 20% |
| account-tejgew | dev-sandbox-1 | $800 | 0% | 0% | 20% |
| account-hxs96d | dev-sandbox-2 | $900 | 0% | 0% | 20% |
| account-7d2j4e | staging | $2,000 | 15% | 5% | 20% |
| account-grjdem | analytics | $1,700 | 20% | 0% | 20% |
| account-tgt2ge | ml-platform | $1,300 | 0% | 10% | 20% |
| **Total** | — | **$15,000** | **avg 12%** | **avg 4%** | **20%** |

The organization exists with enterprise-tier consolidated billing and a modeled combined coverage of 65% RI + 20% SP — but none of the accounts are enrolled. Every account purchases discounts in isolation.

**Safety check:**

Billing scope, chargeback, Billing Conductor, and legal entity scope are not present in the provided files. These must be verified before enrolling accounts. The organization is tagged with `Owner = bob@example.com` and `CostCenter = CC-283`, which provides a starting point for the management account verification.

### 3.2 RI/SP Coverage Evidence

| Metric | Value |
|--------|-------|
| Current RI coverage | 15.7% |
| Current SP coverage | 0.8% |
| On-demand % | **83.5%** |
| Total monthly compute spend | $15,516.10 |
| Active reservations | 1 × Convertible m5.large (3yr) |
| Existing RI utilization | **81.9%** (well-utilized) |

The single existing RI at 81.9% utilization shows commitments are well-managed when purchased — there is no stranded commitment problem (O4 does not fire). The problem is the scale of coverage: 83.5% on-demand is far above the 40% threshold for a commitment coverage gap finding.

**Modeled savings from ri_sp_coverage.json (NOT authoritative — new purchases required):**

| Commitment Type | Savings % | Monthly Savings | Annual Savings |
|----------------|-----------|-----------------|----------------|
| 1yr Reserved Instance | 43.5% | $5,631/mo | $67,572/yr |
| 1yr Compute Savings Plans | 34.4% | $4,455/mo | $53,470/yr |
| 3yr Reserved Instance | 60.8% | $7,883/mo | $94,596/yr |

These modeled savings are additional to the $3,000/mo consolidated billing savings and require new commitment purchases — do not count until eligibility, sharing preferences, and workload stability are confirmed.

### 3.3 Cost Evidence (6 months)

| Month | Total Spend | Organizations Svc | Cost Explorer Svc |
|-------|------------|-------------------|-------------------|
| M-5 | $23,263 | $7,010 | $12,597 |
| M-4 | $26,310 | $12,387 | $9,848 |
| M-3 | $25,149 | $13,305 | $8,017 |
| M-2 | $23,796 | $14,679 | $5,570 |
| M-1 | $24,604 | $10,537 | $10,544 |
| M-0 | $24,866 | $9,435 | $11,288 |
| **Avg** | **$24,665** | **$11,225** | **$9,644** |

Core service spend (EC2, RDS, S3, Lambda) averages $4,141/mo — consistent and workload-stable. The large "Organizations" and "Cost Explorer" service entries ($9,644–$11,225/mo) represent simulation cost attribution artifacts rather than actual billed AWS services.

**Cost decomposition (authoritative, from pricing_note):**

| Scenario | Monthly Cost | Monthly Savings |
|----------|-------------|-----------------|
| Current: 10 isolated accounts | $15,000/mo | — |
| After consolidated billing + RI/SP pooling | ~$12,000/mo | **~$3,000/mo** |

The 20% savings = $3,000/mo is authoritative from `cost_report.json pricing_note` and includes both RI/SP pooling (sharing existing commitments across accounts) and enterprise volume discounts.

### 3.4 Root Cause

**Each account purchases compute at on-demand or locally-scoped commitment rates, forfeiting the cross-account discount sharing that the organization already supports.**

The organization (`organization-bg5imo`) is configured for consolidated billing at enterprise tier. If accounts were enrolled:
- RI purchases in any account would apply to eligible on-demand usage in all other accounts (subject to sharing preferences).
- Compute Savings Plans would apply cross-account automatically within the consolidated billing family.
- Volume discounts would aggregate across all $15,000/mo of spend.

Instead, each account's RI/SP purchases are isolated. team-delta has SP coverage but 0% RI; team-alpha has 25% RI but 0% SP. team-delta's SP cannot cover team-alpha's eligible EC2 usage, and vice versa. This fragmentation keeps effective coverage at 16% rather than the 65%+ achievable through pooling.

The compounding factor is tag governance: with 20% tag compliance across all 10 accounts and no Owner or CostCenter on most accounts, it is impossible to safely attribute the savings from shared commitments to the correct team chargeback without additional remediation.

---

## Proposed Solution

### Immediate Actions

1. **Validate account scope and billing prerequisites** before enrolling in consolidated billing:
   ```
   - Confirm all 10 accounts belong to the same legal/commercial entity.
   - Confirm no Billing Conductor or billing transfer isolates charges for compliance or M&A reasons.
   - Confirm RI/SP sharing preferences at the management account and payer account level.
   - Document current per-account chargeback model and confirm shared savings attribution rules.
   ```

2. **Enroll all 10 accounts in consolidated billing** under `organization-bg5imo`:
   - Set `consolidated_billing = true` on each account (in the real environment: ensure accounts are members of the AWS Organization managed by account organization-bg5imo).
   - Enable RI sharing and Savings Plans sharing at the management account level in the AWS Cost Management console.
   - Expected savings: **$3,000/mo** immediately from pooling existing commitments + volume discounts.

3. **Fix tag governance (prerequisite for safe commitment planning)**:
   - All 10 accounts need complete `Service`, `Team`, `Env`, `CostCenter`, and `Owner` tags.
   - Owner and CostCenter are missing on 10/10 and 8/10 accounts respectively — resolve from HRIS/account registry.
   - Without these tags, centralized commitment purchases cannot be safely attributed to per-team chargebacks.

4. **Monitor for 30 days post-enrollment:**
   ```bash
   # Verify effective savings rate in Cost Explorer after consolidation
   aws ce get-cost-and-usage \
     --time-period Start=<enroll-date>,End=<30-days-later> \
     --granularity MONTHLY \
     --metrics BlendedCost UnblendedCost \
     --group-by Type=DIMENSION,Key=LINKED_ACCOUNT

   # Check RI/SP sharing is active
   aws ce get-reservation-coverage \
     --time-period Start=<enroll-date>,End=<30-days-later> \
     --granularity MONTHLY
   ```

### Secondary Actions (after O1 and O5 are resolved)

5. **Model and purchase new Compute Savings Plans** once consolidated billing is confirmed and tagging is complete:
   - Run AWS Cost Explorer Savings Plans recommendations against the consolidated spend.
   - Start with a 1yr Compute Savings Plan for the stable portion of on-demand spend (EC2 + Fargate + Lambda eligible).
   - Modeled savings: $4,455/mo (1yr SP) — ESTIMATE ONLY, verify with recommendations after consolidation.
   - Do not purchase new commitments until consolidated billing is confirmed and per-account chargeback tagging is complete.

### Preventive Actions

1. **Enforce complete tag compliance** — add a tag policy in AWS Organizations requiring `Service`, `Team`, `Env`, `CostCenter`, and `Owner` on all accounts. Use `aws_organizations_policy` to enforce at the OU level.

2. **Centralize commitment planning** — designate a FinOps-owned management account for all RI/SP purchases. Require commitment purchases > $500/mo to go through a central review with workload stability evidence.

3. **Monthly coverage review** — track RI/SP coverage and utilization per account monthly in Cost Explorer. Alert when any account's on-demand% exceeds 60% for two consecutive months.

4. **Convertible RI exchanges** — the existing m5.large Convertible RI (81.9% utilized) can be exchanged to match actual instance family usage once the consolidated billing view reveals the true usage pattern across accounts.

---

## Estimated Monthly Savings

**~$3,000 / month (authoritative)**
**~$36,000 / year**

| Finding | Severity | Monthly Savings | Annual Savings | Confidence |
|---------|----------|-----------------|----------------|------------|
| O1 — Consolidated billing not enrolled | HIGH | **~$3,000** | **~$36,000** | **High** (pricing_note authoritative) |
| O3 — New commitment purchases (secondary) | MEDIUM | ~$4,455 est. | ~$53,472 est. | Medium (modeled, new purchases required) |
| O5 — Tag governance gap | MEDIUM | $0 direct | $0 direct | — (prerequisite) |
| **Primary total** | | **~$3,000/mo** | **~$36,000/yr** | |
| Combined (O1 + O3 after modeling) | | ~$7,455 est. | ~$89,472 est. | Modeled only |

> **Confidence: High for O1.** The cost_report.json pricing_note is authoritative ($3,000/mo = 20% of $15,000/mo). The organization already has enterprise consolidated billing configured — the savings are gated only by account enrollment and safety validation. O3 savings are estimated from ri_sp_coverage.json modeled scenarios and require new commitment purchases, workload stability analysis, and chargeback tag completion before acting.

---

*Generated by: finops-organizations skill v1.1.0 — Claude Code | Scenario: L3-034 (CloudSync)*
