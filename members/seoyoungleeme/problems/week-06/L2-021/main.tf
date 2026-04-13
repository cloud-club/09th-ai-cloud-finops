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

resource "aws_sqs_queue" "sqs-queue-83ackx" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-83ackx"
  }
}
resource "aws_sqs_queue" "sqs-queue-ackuzr" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-ackuzr"
  }
}
resource "aws_sqs_queue" "sqs-queue-mwbrm2" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-mwbrm2"
  }
}
resource "aws_sqs_queue" "sqs-queue-hil4hg" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-hil4hg"
  }
}
resource "aws_sqs_queue" "sqs-queue-mq58yd" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-mq58yd"
  }
}
resource "aws_sqs_queue" "sqs-queue-ouczyn" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-ouczyn"
  }
}
resource "aws_sqs_queue" "sqs-queue-gq175x" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-gq175x"
  }
}
