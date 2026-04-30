terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# ══════════════════════════════════════════════════════════════════════════════
# FINOPS: All 10 accounts — consolidated_billing = false → true
#
# Problem: Each account purchases discounts in isolation. Average individual
# RI/SP coverage is 16% (12% RI + 4% SP), while the organization already
# supports enterprise consolidated billing with modeled combined coverage of
# 65% RI + 20% SP. RI/SP purchases in any account cannot benefit other accounts.
#
# Fix: Enroll all 10 accounts in consolidated billing under organization-bg5imo.
# Expected savings: ~$3,000/mo (~$36,000/yr) from RI/SP pooling + volume discounts.
# Savings basis: cost_report.json pricing_note (authoritative) — 20% of $15,000/mo.
#
# PREREQUISITE — before applying:
#   1. Confirm all accounts share the same legal/commercial billing entity.
#   2. Confirm no Billing Conductor or billing transfer isolates charges.
#   3. Confirm RI/SP sharing preferences at the management account level.
#   4. Confirm shared discounts do not break team chargeback agreements.
#   5. Complete tag governance (O5) — Owner and CostCenter required for
#      per-account savings attribution before purchasing new commitments.
#
# OPERATIONAL STEPS (real AWS environment — not Terraform):
#   1. In the management account (organization-bg5imo), go to
#      AWS Organizations → Accounts and verify all 10 accounts are members.
#   2. In Cost Management → Cost and Usage → Savings Plans settings,
#      enable "Savings Plans sharing" for the management account.
#   3. In Cost Management → Reserved Instances, enable "RI sharing" for
#      the management account.
#   4. Apply updated account tags from this file (set Owner + CostCenter
#      from HRIS before applying).
#   5. Monitor Cost Explorer for 30 days to confirm effective savings rate.
# ══════════════════════════════════════════════════════════════════════════════

# ── TAG GOVERNANCE NOTE ────────────────────────────────────────────────────────
# All 10 accounts had 20% tag compliance (1 of 5 required tags each).
# Owner is missing on all 10; CostCenter is missing on 8 of 10.
# Tags marked "VERIFY" below must be set from HRIS / account registry data
# before applying — do not leave them as-is in production.
# ──────────────────────────────────────────────────────────────────────────────

resource "aws_account" "account-5sr559" {
  account_alias        = "team-alpha"
  monthly_spend_usd    = 1800
  ri_coverage_percent  = 25
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false — enrolling in organization-bg5imo

  tags = {
    Name       = "account-5sr559"
    Env        = "prod"              # from existing tags
    Team       = "alpha"             # inferred from account_alias
    Service    = "backend"           # VERIFY: set from account registry
    CostCenter = "VERIFY-FROM-HRIS" # VERIFY: missing — set from HRIS
    Owner      = "VERIFY-owner@cloudsync.io" # VERIFY: missing on all accounts
  }
}

resource "aws_account" "account-xgc1ls" {
  account_alias        = "team-beta"
  monthly_spend_usd    = 2200
  ri_coverage_percent  = 30
  sp_coverage_percent  = 10
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-xgc1ls"
    Team       = "devops"            # from existing tags
    Env        = "prod"              # VERIFY: inferred from team context
    Service    = "backend"           # VERIFY: set from account registry
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-4dwi3q" {
  account_alias        = "team-gamma"
  monthly_spend_usd    = 1500
  ri_coverage_percent  = 20
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-4dwi3q"
    Team       = "data"              # from existing tags
    Env        = "prod"              # VERIFY: inferred
    Service    = "data-pipeline"     # VERIFY: set from account registry
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-6xbfg6" {
  account_alias        = "team-delta"
  monthly_spend_usd    = 1200
  ri_coverage_percent  = 0
  sp_coverage_percent  = 15
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-6xbfg6"
    Service    = "worker"            # from existing tags
    Team       = "delta"             # VERIFY: inferred from account_alias
    Env        = "prod"              # VERIFY: inferred
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-4yh2uj" {
  account_alias        = "team-epsilon"
  monthly_spend_usd    = 1600
  ri_coverage_percent  = 10
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-4yh2uj"
    CostCenter = "CC-820"            # from existing tags
    Team       = "epsilon"           # VERIFY: inferred from account_alias
    Env        = "prod"              # VERIFY: inferred
    Service    = "backend"           # VERIFY: set from account registry
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-tejgew" {
  account_alias        = "dev-sandbox-1"
  monthly_spend_usd    = 800
  ri_coverage_percent  = 0
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-tejgew"
    Service    = "web"               # from existing tags
    Team       = "devops"            # VERIFY: inferred from sandbox context
    Env        = "dev"               # inferred from account_alias
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-hxs96d" {
  account_alias        = "dev-sandbox-2"
  monthly_spend_usd    = 900
  ri_coverage_percent  = 0
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-hxs96d"
    CostCenter = "CC-426"            # from existing tags
    Team       = "devops"            # VERIFY: inferred from sandbox context
    Env        = "dev"               # inferred from account_alias
    Service    = "sandbox"           # VERIFY: set from account registry
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-7d2j4e" {
  account_alias        = "staging"
  monthly_spend_usd    = 2000
  ri_coverage_percent  = 15
  sp_coverage_percent  = 5
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-7d2j4e"
    Env        = "staging"           # from existing tags
    Team       = "devops"            # VERIFY: inferred from staging context
    Service    = "backend"           # VERIFY: set from account registry
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-grjdem" {
  account_alias        = "analytics"
  monthly_spend_usd    = 1700
  ri_coverage_percent  = 20
  sp_coverage_percent  = 0
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-grjdem"
    Team       = "backend"           # from existing tags
    Service    = "analytics"         # inferred from account_alias
    Env        = "prod"              # VERIFY: inferred
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

resource "aws_account" "account-tgt2ge" {
  account_alias        = "ml-platform"
  monthly_spend_usd    = 1300
  ri_coverage_percent  = 0
  sp_coverage_percent  = 10
  consolidated_billing = true  # was false

  tags = {
    Name       = "account-tgt2ge"
    Service    = "auth"              # from existing tags
    Team       = "ml"                # VERIFY: inferred from account_alias
    Env        = "prod"              # VERIFY: inferred
    CostCenter = "VERIFY-FROM-HRIS"
    Owner      = "VERIFY-owner@cloudsync.io"
  }
}

# ── No changes to organization — already has consolidated_billing = true ───────
# Secondary: after accounts are enrolled and tagging is complete, run
# AWS Cost Explorer Savings Plans recommendations against the consolidated
# view. Modeled 1yr Compute SP savings: ~$4,455/mo additional.
# Do not purchase new commitments until tag governance is complete.

resource "aws_organization" "organization-bg5imo" {
  consolidated_billing = true
  account_count        = 10
  total_monthly_spend_usd      = 15000
  combined_ri_coverage_percent = 65
  combined_sp_coverage_percent = 20
  volume_discount_tier         = "enterprise"
  estimated_savings_percent    = 20

  tags = {
    Name       = "organization-bg5imo"
    Service    = "data-pipeline"
    Team       = "infra"
    Env        = "staging"
    CostCenter = "CC-283"
    Owner      = "bob@example.com"
  }
}