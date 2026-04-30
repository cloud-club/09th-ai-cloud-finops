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

# ══════════════════════════════════════════════════════════════════════════════
# FINOPS: kinesis-stream-th5ftu — 2 Enhanced Fan-Out consumers removed.
# EFO is unjustified: processing_interval is 5 min (batch, not real-time),
# only 2 consumers (standard 2 MB/s/shard GetRecords is sufficient), and
# ReadProvisionedThroughputExceeded = 0 over 30 days confirms no contention.
# Estimated savings: ~$437/mo (~$5,244/yr).
#
# PREREQUISITE: Migrate consumer applications from SubscribeToShard (EFO) to
# GetRecords (standard) API before applying. Monitor ReadProvisionedThroughput
# Exceeded for 7 days post-migration. See finops_report.md for the CLI command.
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_kinesis_stream" "kinesis-stream-th5ftu" {
  name             = "kinesis-stream-th5ftu"
  shard_count      = 20
  retention_period = 24  # hours

  tags = {
    Name = "kinesis-stream-th5ftu"
  }
}

# kinesis-stream-consumer-zcd0bk REMOVED — was EFO (enhanced_fan_out); switching to standard GetRecords
# kinesis-stream-consumer-t865bp REMOVED — was EFO (enhanced_fan_out); switching to standard GetRecords

# ── No changes — enhanced_fan_out = false, compliant ─────────────────────────

resource "aws_kinesis_stream" "kinesis-stream-b0395y" {
  name             = "kinesis-stream-b0395y"
  shard_count      = 5
  retention_period = 24  # hours

  tags = {
    Name = "kinesis-stream-b0395y"
  }
}