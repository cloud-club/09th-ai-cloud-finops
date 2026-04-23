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

resource "aws_account" "account-5sr559" {
  account_alias = "team-alpha"
  monthly_spend_usd = 1800
  ri_coverage_percent = 25
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-5sr559"
  }
}
resource "aws_account" "account-xgc1ls" {
  account_alias = "team-beta"
  monthly_spend_usd = 2200
  ri_coverage_percent = 30
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-xgc1ls"
  }
}
resource "aws_account" "account-4dwi3q" {
  account_alias = "team-gamma"
  monthly_spend_usd = 1500
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-4dwi3q"
  }
}
resource "aws_account" "account-6xbfg6" {
  account_alias = "team-delta"
  monthly_spend_usd = 1200
  ri_coverage_percent = 0
  sp_coverage_percent = 15
  consolidated_billing = false

  tags = {
    Name = "account-6xbfg6"
  }
}
resource "aws_account" "account-4yh2uj" {
  account_alias = "team-epsilon"
  monthly_spend_usd = 1600
  ri_coverage_percent = 10
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-4yh2uj"
  }
}
resource "aws_account" "account-tejgew" {
  account_alias = "dev-sandbox-1"
  monthly_spend_usd = 800
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-tejgew"
  }
}
resource "aws_account" "account-hxs96d" {
  account_alias = "dev-sandbox-2"
  monthly_spend_usd = 900
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-hxs96d"
  }
}
resource "aws_account" "account-7d2j4e" {
  account_alias = "staging"
  monthly_spend_usd = 2000
  ri_coverage_percent = 15
  sp_coverage_percent = 5
  consolidated_billing = false

  tags = {
    Name = "account-7d2j4e"
  }
}
resource "aws_account" "account-grjdem" {
  account_alias = "analytics"
  monthly_spend_usd = 1700
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-grjdem"
  }
}
resource "aws_account" "account-tgt2ge" {
  account_alias = "ml-platform"
  monthly_spend_usd = 1300
  ri_coverage_percent = 0
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-tgt2ge"
  }
}
resource "aws_organization" "organization-bg5imo" {
  consolidated_billing = true
  account_count = 10
  total_monthly_spend_usd = 15000
  combined_ri_coverage_percent = 65
  combined_sp_coverage_percent = 20
  volume_discount_tier = "enterprise"
  estimated_savings_percent = 20

  tags = {
    Name = "organization-bg5imo"
  }
}
