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

resource "aws_account" "account-emtaa7" {
  account_alias = "team-alpha"
  monthly_spend_usd = 1800
  ri_coverage_percent = 25
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-emtaa7"
  }
}
resource "aws_account" "account-fyznoq" {
  account_alias = "team-beta"
  monthly_spend_usd = 2200
  ri_coverage_percent = 30
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-fyznoq"
  }
}
resource "aws_account" "account-h60oqg" {
  account_alias = "team-gamma"
  monthly_spend_usd = 1500
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-h60oqg"
  }
}
resource "aws_account" "account-y23h3p" {
  account_alias = "team-delta"
  monthly_spend_usd = 1200
  ri_coverage_percent = 0
  sp_coverage_percent = 15
  consolidated_billing = false

  tags = {
    Name = "account-y23h3p"
  }
}
resource "aws_account" "account-bpi6ba" {
  account_alias = "team-epsilon"
  monthly_spend_usd = 1600
  ri_coverage_percent = 10
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-bpi6ba"
  }
}
resource "aws_account" "account-arbx2n" {
  account_alias = "dev-sandbox-1"
  monthly_spend_usd = 800
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-arbx2n"
  }
}
resource "aws_account" "account-i402ay" {
  account_alias = "dev-sandbox-2"
  monthly_spend_usd = 900
  ri_coverage_percent = 0
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-i402ay"
  }
}
resource "aws_account" "account-0iz37x" {
  account_alias = "staging"
  monthly_spend_usd = 2000
  ri_coverage_percent = 15
  sp_coverage_percent = 5
  consolidated_billing = false

  tags = {
    Name = "account-0iz37x"
  }
}
resource "aws_account" "account-mcqq41" {
  account_alias = "analytics"
  monthly_spend_usd = 1700
  ri_coverage_percent = 20
  sp_coverage_percent = 0
  consolidated_billing = false

  tags = {
    Name = "account-mcqq41"
  }
}
resource "aws_account" "account-08p1p8" {
  account_alias = "ml-platform"
  monthly_spend_usd = 1300
  ri_coverage_percent = 0
  sp_coverage_percent = 10
  consolidated_billing = false

  tags = {
    Name = "account-08p1p8"
  }
}
resource "aws_organization" "organization-mgmo41" {
  consolidated_billing = true
  account_count = 10
  total_monthly_spend_usd = 15000
  combined_ri_coverage_percent = 65
  combined_sp_coverage_percent = 20
  volume_discount_tier = "enterprise"
  estimated_savings_percent = 20

  tags = {
    Name = "organization-mgmo41"
  }
}
