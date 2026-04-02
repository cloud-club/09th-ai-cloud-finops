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

# [변경] dynamodb-table-mnrimh: RCU 5000→50, WCU 1000→50 으로 축소
# Auto Scaling을 통해 최대 200까지 자동 확장되도록 설정
resource "aws_dynamodb_table" "dynamodb-table-mnrimh" {
  name         = "dynamodb-table-mnrimh"
  billing_mode = "PROVISIONED"

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  # [변경] 5000 → 50 (실사용 최대 100, Auto Scaling 최소값)
  read_capacity = 50
  # [변경] 1000 → 50 (실사용 최대 100, Auto Scaling 최소값)
  write_capacity = 50

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-mnrimh"
  }
}

# [추가] mnrimh 테이블 Auto Scaling — Read Capacity
resource "aws_appautoscaling_target" "mnrimh_read" {
  max_capacity       = 200
  min_capacity       = 50
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-mnrimh.name}"
  scalable_dimension = "dynamodb:table:ReadCapacityUnits"
  service_namespace  = "dynamodb"
}

resource "aws_appautoscaling_policy" "mnrimh_read_policy" {
  name               = "DynamoDBReadCapacityUtilization:${aws_appautoscaling_target.mnrimh_read.resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.mnrimh_read.resource_id
  scalable_dimension = aws_appautoscaling_target.mnrimh_read.scalable_dimension
  service_namespace  = aws_appautoscaling_target.mnrimh_read.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBReadCapacityUtilization"
    }
    target_value = 70.0
  }
}

# [추가] mnrimh 테이블 Auto Scaling — Write Capacity
resource "aws_appautoscaling_target" "mnrimh_write" {
  max_capacity       = 200
  min_capacity       = 50
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-mnrimh.name}"
  scalable_dimension = "dynamodb:table:WriteCapacityUnits"
  service_namespace  = "dynamodb"
}

resource "aws_appautoscaling_policy" "mnrimh_write_policy" {
  name               = "DynamoDBWriteCapacityUtilization:${aws_appautoscaling_target.mnrimh_write.resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.mnrimh_write.resource_id
  scalable_dimension = aws_appautoscaling_target.mnrimh_write.scalable_dimension
  service_namespace  = aws_appautoscaling_target.mnrimh_write.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBWriteCapacityUtilization"
    }
    target_value = 70.0
  }
}

# [변경] dynamodb-table-wt6cp5: PAY_PER_REQUEST → PROVISIONED 전환
# 사용량이 완전히 일정(RCU=100, WCU=100, std=0)하므로 프로비저닝이 비용 효율적
resource "aws_dynamodb_table" "dynamodb-table-wt6cp5" {
  name         = "dynamodb-table-wt6cp5"
  billing_mode = "PROVISIONED" # [변경] PAY_PER_REQUEST → PROVISIONED

  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  # [추가] 프로비저닝 용량 설정
  read_capacity  = 50
  write_capacity = 50

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-wt6cp5"
  }
}

# [추가] wt6cp5 테이블 Auto Scaling — Read Capacity
resource "aws_appautoscaling_target" "wt6cp5_read" {
  max_capacity       = 200
  min_capacity       = 50
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-wt6cp5.name}"
  scalable_dimension = "dynamodb:table:ReadCapacityUnits"
  service_namespace  = "dynamodb"
}

resource "aws_appautoscaling_policy" "wt6cp5_read_policy" {
  name               = "DynamoDBReadCapacityUtilization:${aws_appautoscaling_target.wt6cp5_read.resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.wt6cp5_read.resource_id
  scalable_dimension = aws_appautoscaling_target.wt6cp5_read.scalable_dimension
  service_namespace  = aws_appautoscaling_target.wt6cp5_read.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBReadCapacityUtilization"
    }
    target_value = 70.0
  }
}

# [추가] wt6cp5 테이블 Auto Scaling — Write Capacity
resource "aws_appautoscaling_target" "wt6cp5_write" {
  max_capacity       = 200
  min_capacity       = 50
  resource_id        = "table/${aws_dynamodb_table.dynamodb-table-wt6cp5.name}"
  scalable_dimension = "dynamodb:table:WriteCapacityUnits"
  service_namespace  = "dynamodb"
}

resource "aws_appautoscaling_policy" "wt6cp5_write_policy" {
  name               = "DynamoDBWriteCapacityUtilization:${aws_appautoscaling_target.wt6cp5_write.resource_id}"
  policy_type        = "TargetTrackingScaling"
  resource_id        = aws_appautoscaling_target.wt6cp5_write.resource_id
  scalable_dimension = aws_appautoscaling_target.wt6cp5_write.scalable_dimension
  service_namespace  = aws_appautoscaling_target.wt6cp5_write.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "DynamoDBWriteCapacityUtilization"
    }
    target_value = 70.0
  }
}