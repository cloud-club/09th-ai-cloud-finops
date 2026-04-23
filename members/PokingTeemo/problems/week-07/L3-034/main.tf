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

resource "aws_account" "account-0rpnx5" {
  account_alias = "team-alpha"
  monthly_spend_usd = 1800
  ri_coverage_percent = 25
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-0rpnx5"
  }
}
resource "aws_account" "account-1yzwyy" {
  account_alias = "team-beta"
  monthly_spend_usd = 2200
  ri_coverage_percent = 30
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-1yzwyy"
  }
}
resource "aws_account" "account-lob0i7" {
  account_alias = "team-gamma"
  monthly_spend_usd = 1500
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-lob0i7"
  }
}
resource "aws_account" "account-hbh7p5" {
  account_alias = "team-delta"
  monthly_spend_usd = 1200
  ri_coverage_percent = 0
  sp_coverage_percent = 15
  consolidated_billing = false

  tags = {
    Name = "account-hbh7p5"
  }
}
resource "aws_account" "account-qs3hk5" {
  account_alias = "team-epsilon"
  monthly_spend_usd = 1600
  ri_coverage_percent = 10
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-qs3hk5"
  }
}
resource "aws_account" "account-thw16l" {
  account_alias = "dev-sandbox-1"
  monthly_spend_usd = 800
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-thw16l"
  }
}
resource "aws_account" "account-d0qoby" {
  account_alias = "dev-sandbox-2"
  monthly_spend_usd = 900
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-d0qoby"
  }
}
resource "aws_account" "account-bnctiv" {
  account_alias = "staging"
  monthly_spend_usd = 2000
  ri_coverage_percent = 15
  sp_coverage_percent = 5
  consolidated_billing = false

  tags = {
    Name = "account-bnctiv"
  }
}
resource "aws_account" "account-sb2h2b" {
  account_alias = "analytics"
  monthly_spend_usd = 1700
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-sb2h2b"
  }
}
resource "aws_account" "account-52ktko" {
  account_alias = "ml-platform"
  monthly_spend_usd = 1300
  ri_coverage_percent = 0
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-52ktko"
  }
}
resource "aws_organization" "organization-z7bp8i" {
  consolidated_billing = true
  account_count = 10
  total_monthly_spend_usd = 15000
  combined_ri_coverage_percent = 65
  combined_sp_coverage_percent = 20
  volume_discount_tier = "enterprise"
  estimated_savings_percent = 20

  tags = {
    Name = "organization-z7bp8i"
  }
}
