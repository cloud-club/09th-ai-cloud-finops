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

# 최적화: receive_wait_time_seconds 0 → 20 (Short Polling → Long Polling)
# 근거: empty_receives_per_day 2,000,000 → 3,000 (99.8% 절감), 월 $24 → $0.05
resource "aws_sqs_queue" "sqs-queue-duew4e" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 1000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-duew4e"
  }
}

# 최적화: receive_wait_time_seconds 0 → 20 (Short Polling → Long Polling)
resource "aws_sqs_queue" "sqs-queue-vvl51h" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 1000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-vvl51h"
  }
}

# 최적화: receive_wait_time_seconds 0 → 20 (Short Polling → Long Polling)
resource "aws_sqs_queue" "sqs-queue-y2aycr" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 1000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-y2aycr"
  }
}

# 최적화: receive_wait_time_seconds 0 → 20 (Short Polling → Long Polling)
resource "aws_sqs_queue" "sqs-queue-q15qg4" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 1000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-q15qg4"
  }
}

# 최적화: receive_wait_time_seconds 0 → 20 (Short Polling → Long Polling)
resource "aws_sqs_queue" "sqs-queue-3qv4aa" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 1000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-3qv4aa"
  }
}

# 정상 (변경 없음): Long Polling 이미 적용됨
resource "aws_sqs_queue" "sqs-queue-ok89mf" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 5000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-ok89mf"
  }
}

# 정상 (변경 없음): Long Polling 이미 적용됨
resource "aws_sqs_queue" "sqs-queue-i2h4yv" {
  receive_wait_time_seconds  = 20
  visibility_timeout_seconds = 30
  messages_per_day           = 5000
  empty_receives_per_day     = 3000
  polling_interval_ms        = 20000

  tags = {
    Name = "sqs-queue-i2h4yv"
  }
}