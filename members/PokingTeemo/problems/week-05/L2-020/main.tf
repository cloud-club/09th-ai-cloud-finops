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

resource "aws_db_instance" "db-instance-7ln4x4" {
  identifier     = "db-instance-7ln4x4"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  replicate_source_db = aws_db_instance.primary.identifier

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-7ln4x4"
    Role        = "read_replica"
  }
}

resource "aws_db_instance" "db-instance-vgc2je" {
  identifier     = "db-instance-vgc2je"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  replicate_source_db = aws_db_instance.primary.identifier

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-vgc2je"
    Role        = "read_replica"
  }
}

resource "aws_db_instance" "db-instance-wkoxbd" {
  identifier     = "db-instance-wkoxbd"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = false

  replicate_source_db = aws_db_instance.primary.identifier

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-wkoxbd"
    Role        = "read_replica"
  }
}

resource "aws_db_instance" "db-instance-ug1nte" {
  identifier     = "db-instance-ug1nte"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.xlarge"

  allocated_storage = 500
  storage_type      = "gp3"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-ug1nte"
    Role        = "primary"
  }
}

