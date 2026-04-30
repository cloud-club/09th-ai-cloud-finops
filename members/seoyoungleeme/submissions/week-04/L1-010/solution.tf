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
# FINOPS: dynamodb-table-c53qiq — capacity right-sized from 5,000/1,000 to
# 650/150 RCU/WCU (10% actual utilization). Auto Scaling added for both
# read and write. Estimated savings: ~$522/mo (~$6,264/yr).
#
# PREREQUISITE: Confirm zero ThrottledRequests in CloudWatch for the last
# 30 days before applying. See finops_report.md for the verification command.
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_dynamodb_table" "dynamodb-table-c53qiq" {
  name         = "dynamodb-table-c53qiq"
  billing_mode = "PROVISIONED"

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  read_capacity  = 650  # was 5,000 — right-sized to p95(500) × 1.3 safety factor; Auto Scaling handles demand above this
  write_capacity = 150  # was 1,000 — right-sized to p95(100) × 1.3 safety factor; Auto Scaling handles demand above this

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-c53qiq"
  }
}

# ── Auto Scaling: Read ────────────────────────────────────────────────────────

resource "aws_appautoscaling_target" "dynamodb-table-c53qiq-read" {
  service_namespace  = "dynamodb"
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-c53qiq.name}"
  scalable_dimension = "dynamodb:table:ReadCapacityUnits"
  min_capacity       = 650   # p95 actual × 1.3
  max_capacity       = 1500  # peak actual × 3.0
}

resource "aws_appautoscaling_policy" "dynamodb-table-c53qiq-read-policy" {
  name               = "DynamoDBReadCapacityUtilization:${aws_appautoscaling_target.dynamodb-table-c53qiq-read.resource_id}"
  service_namespace  = aws_appautoscaling_target.dynamodb-table-c53qiq-read.service_namespace
  resource_id        = aws_appautoscaling_target.dynamodb-table-c53qiq-read.resource_id
  scalable_dimension = aws_appautoscaling_target.dynamodb-table-c53qiq-read.scalable_dimension
  policy_type        = "TargetTrackingScaling"

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBReadCapacityUtilization"
    }
    target_value       = 70.0  # scale out when consumed > 70% of provisioned
    scale_in_cooldown  = 300
    scale_out_cooldown = 60
  }
}

# ── Auto Scaling: Write ───────────────────────────────────────────────────────

resource "aws_appautoscaling_target" "dynamodb-table-c53qiq-write" {
  service_namespace  = "dynamodb"
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-c53qiq.name}"
  scalable_dimension = "dynamodb:table:WriteCapacityUnits"
  min_capacity       = 150   # p95 actual × 1.3
  max_capacity       = 300   # peak actual × 3.0
}

resource "aws_appautoscaling_policy" "dynamodb-table-c53qiq-write-policy" {
  name               = "DynamoDBWriteCapacityUtilization:${aws_appautoscaling_target.dynamodb-table-c53qiq-write.resource_id}"
  service_namespace  = aws_appautoscaling_target.dynamodb-table-c53qiq-write.service_namespace
  resource_id        = aws_appautoscaling_target.dynamodb-table-c53qiq-write.resource_id
  scalable_dimension = aws_appautoscaling_target.dynamodb-table-c53qiq-write.scalable_dimension
  policy_type        = "TargetTrackingScaling"

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBWriteCapacityUtilization"
    }
    target_value       = 70.0  # scale out when consumed > 70% of provisioned
    scale_in_cooldown  = 300
    scale_out_cooldown = 60
  }
}

# ── No changes — PAY_PER_REQUEST, compliant ──────────────────────────────────

resource "aws_dynamodb_table" "dynamodb-table-am0yhj" {
  name         = "dynamodb-table-am0yhj"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-am0yhj"
  }
}