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

resource "aws_sqs_queue" "sqs-queue-82p8q5" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-82p8q5"
  }
}
resource "aws_sqs_queue" "sqs-queue-bdddly" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-bdddly"
  }
}
resource "aws_sqs_queue" "sqs-queue-xub9lf" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-xub9lf"
  }
}
resource "aws_sqs_queue" "sqs-queue-5sjem1" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-5sjem1"
  }
}
resource "aws_sqs_queue" "sqs-queue-po2f64" {
  receive_wait_time_seconds = 0
  visibility_timeout_seconds = 30
  messages_per_day = 1000
  empty_receives_per_day = 2000000
  polling_interval_ms = 100

  tags = {
    Name = "sqs-queue-po2f64"
  }
}
resource "aws_sqs_queue" "sqs-queue-9q4alt" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-9q4alt"
  }
}
resource "aws_sqs_queue" "sqs-queue-5zhcdz" {
  receive_wait_time_seconds = 20
  visibility_timeout_seconds = 30
  messages_per_day = 5000
  empty_receives_per_day = 3000
  polling_interval_ms = 20000

  tags = {
    Name = "sqs-queue-5zhcdz"
  }
}
