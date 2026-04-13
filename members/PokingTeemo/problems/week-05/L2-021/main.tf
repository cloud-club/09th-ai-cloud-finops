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

resource "aws_sqs_queue" "sqs-queue-frv7fb" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-frv7fb"
  }
}
resource "aws_sqs_queue" "sqs-queue-gk6ug4" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-gk6ug4"
  }
}
resource "aws_sqs_queue" "sqs-queue-xo7yn9" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-xo7yn9"
  }
}
resource "aws_sqs_queue" "sqs-queue-lwu0ji" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-lwu0ji"
  }
}
resource "aws_sqs_queue" "sqs-queue-txdn3l" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-txdn3l"
  }
}
resource "aws_sqs_queue" "sqs-queue-uktn5k" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-uktn5k"
  }
}
resource "aws_sqs_queue" "sqs-queue-p1eyu3" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-p1eyu3"
  }
}
