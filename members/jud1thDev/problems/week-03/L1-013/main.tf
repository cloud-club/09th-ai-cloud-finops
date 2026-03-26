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

resource "aws_db_instance" "db-instance-7e8ofq" {
  identifier     = "db-instance-7e8ofq"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 35

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-7e8ofq"
  }
}

resource "aws_db_instance" "db-instance-5lqnzs" {
  identifier     = "db-instance-5lqnzs"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 35

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-5lqnzs"
  }
}

resource "aws_db_instance" "db-instance-66anla" {
  identifier     = "db-instance-66anla"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 200
  storage_type      = "gp3"

  multi_az = false

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-66anla"
  }
}

