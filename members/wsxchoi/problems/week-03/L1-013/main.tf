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

resource "aws_db_instance" "db-instance-58k76l" {
  identifier     = "db-instance-58k76l"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 35

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-58k76l"
  }
}

resource "aws_db_instance" "db-instance-7u4t4b" {
  identifier     = "db-instance-7u4t4b"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 35

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-7u4t4b"
  }
}

resource "aws_db_instance" "db-instance-mv1qab" {
  identifier     = "db-instance-mv1qab"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 200
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-mv1qab"
  }
}

