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

# [변경] instance_class: db.r5.xlarge → db.r6g.xlarge (Graviton2, ~20% 비용 절감)
# [변경] backup_retention_period: 35 → 7 (과도한 백업 보존으로 ~$133/월 추가 비용 제거)
resource "aws_db_instance" "db-instance-58k76l" {
  identifier     = "db-instance-58k76l"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r6g.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-58k76l"
  }
}

# [변경] instance_class: db.r5.xlarge → db.r6g.xlarge (Graviton2, ~20% 비용 절감)
# [변경] backup_retention_period: 35 → 7 (과도한 백업 보존으로 ~$133/월 추가 비용 제거)
resource "aws_db_instance" "db-instance-7u4t4b" {
  identifier     = "db-instance-7u4t4b"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r6g.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-7u4t4b"
  }
}

# [변경] instance_class: db.r5.large → db.r6g.large (Graviton2, ~20% 비용 절감)
# 백업 보존 기간은 이미 7일로 적정 수준 — 변경 없음
resource "aws_db_instance" "db-instance-mv1qab" {
  identifier     = "db-instance-mv1qab"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r6g.large"

  allocated_storage = 200
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-mv1qab"
  }
}