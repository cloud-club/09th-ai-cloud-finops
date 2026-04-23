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

resource "aws_account" "account-lvh1ni" {
  account_alias = "team-alpha"
  monthly_spend_usd = 1800
  ri_coverage_percent = 25
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-lvh1ni"
  }
}
resource "aws_account" "account-ba6pbk" {
  account_alias = "team-beta"
  monthly_spend_usd = 2200
  ri_coverage_percent = 30
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-ba6pbk"
  }
}
resource "aws_account" "account-ybj5u6" {
  account_alias = "team-gamma"
  monthly_spend_usd = 1500
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-ybj5u6"
  }
}
resource "aws_account" "account-csfhbf" {
  account_alias = "team-delta"
  monthly_spend_usd = 1200
  ri_coverage_percent = 0
  sp_coverage_percent = 15
  consolidated_billing = false

  tags = {
    Name = "account-csfhbf"
  }
}
resource "aws_account" "account-qflbw0" {
  account_alias = "team-epsilon"
  monthly_spend_usd = 1600
  ri_coverage_percent = 10
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-qflbw0"
  }
}
resource "aws_account" "account-fkxxdu" {
  account_alias = "dev-sandbox-1"
  monthly_spend_usd = 800
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-fkxxdu"
  }
}
resource "aws_account" "account-wrncdv" {
  account_alias = "dev-sandbox-2"
  monthly_spend_usd = 900
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-wrncdv"
  }
}
resource "aws_account" "account-efcmgr" {
  account_alias = "staging"
  monthly_spend_usd = 2000
  ri_coverage_percent = 15
  sp_coverage_percent = 5
  consolidated_billing = false

  tags = {
    Name = "account-efcmgr"
  }
}
resource "aws_account" "account-mvl1ij" {
  account_alias = "analytics"
  monthly_spend_usd = 1700
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-mvl1ij"
  }
}
resource "aws_account" "account-i9urg4" {
  account_alias = "ml-platform"
  monthly_spend_usd = 1300
  ri_coverage_percent = 0
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-i9urg4"
  }
}
resource "aws_organization" "organization-fg3vcg" {
  consolidated_billing = true
  account_count = 10
  total_monthly_spend_usd = 15000
  combined_ri_coverage_percent = 65
  combined_sp_coverage_percent = 20
  volume_discount_tier = "enterprise"
  estimated_savings_percent = 20

  tags = {
    Name = "organization-fg3vcg"
  }
}
