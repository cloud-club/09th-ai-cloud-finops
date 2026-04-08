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

resource "aws_db_instance" "db-instance-n2mzkv" {
  identifier     = "db-instance-n2mzkv"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-n2mzkv"
    Environment = "dev"
  }
}

resource "aws_db_instance" "db-instance-5iydcw" {
  identifier     = "db-instance-5iydcw"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-5iydcw"
    Environment = "dev"
  }
}

resource "aws_db_instance" "db-instance-g7mz7s" {
  identifier     = "db-instance-g7mz7s"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-g7mz7s"
    Environment = "production"
  }
}

