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

resource "aws_sqs_queue" "sqs-queue-s51wo7" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-s51wo7"
  }
}
resource "aws_sqs_queue" "sqs-queue-pbk56q" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-pbk56q"
  }
}
resource "aws_sqs_queue" "sqs-queue-x3faoa" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-x3faoa"
  }
}
resource "aws_sqs_queue" "sqs-queue-zrmgt5" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-zrmgt5"
  }
}
resource "aws_sqs_queue" "sqs-queue-8kr2o7" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-8kr2o7"
  }
}
resource "aws_sqs_queue" "sqs-queue-cuc0py" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-cuc0py"
  }
}
resource "aws_sqs_queue" "sqs-queue-xceqkn" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-xceqkn"
  }
}
