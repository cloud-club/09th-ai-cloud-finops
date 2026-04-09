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

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-7vex12" {
    name              = "cloudwatch-log-group-7vex12"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-7vex12"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-nyk5m1" {
    name              = "cloudwatch-log-group-nyk5m1"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-nyk5m1"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-zja19a" {
    name              = "cloudwatch-log-group-zja19a"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-zja19a"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ig4aie" {
    name              = "cloudwatch-log-group-ig4aie"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-ig4aie"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-ohkosm" {
    name              = "cloudwatch-log-group-ohkosm"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-ohkosm"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-tg2zpn" {
    name              = "cloudwatch-log-group-tg2zpn"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-tg2zpn"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-fykujp" {
    name              = "cloudwatch-log-group-fykujp"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-fykujp"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-r0am86" {
    name              = "cloudwatch-log-group-r0am86"
    retention_in_days = 30

    tags = {
      Name = "cloudwatch-log-group-r0am86"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-egkot0" {
    name              = "cloudwatch-log-group-egkot0"
    retention_in_days = 90

    tags = {
      Name = "cloudwatch-log-group-egkot0"
    }
  }

  resource "aws_cloudwatch_log_group" "cloudwatch-log-group-xx8vln" {
    name              = "cloudwatch-log-group-xx8vln"
    retention_in_days = 90

    tags = {
      Name = "cloudwatch-log-group-xx8vln"
    }
  }