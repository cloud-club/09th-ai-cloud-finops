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

# ── db-instance-0p5pam (Environment: dev) ───────────────────────────────────
# CHANGES applied by finops-rds:
#   [R1] multi_az: true → false  — dev env needs no cross-AZ failover; saves $175.20/mo
#   [R2] instance_class: db.r5.large → db.t3.large  — CPU avg 14.8% over 30d; saves $151.84/mo
resource "aws_db_instance" "db-instance-0p5pam" {
  identifier     = "db-instance-0p5pam"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.large"    # was db.r5.large — CPU avg 14.8%, overprovisioned

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = false    # was true — dev environment does not require Multi-AZ failover

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-0p5pam"
    Environment = "dev"
  }
}

# ── db-instance-fgvel1 (Environment: dev) ───────────────────────────────────
# CHANGES applied by finops-rds:
#   [R1] multi_az: true → false  — dev env needs no cross-AZ failover; saves $175.20/mo
#   [R2] instance_class: db.r5.large → db.t3.large  — CPU avg 15.9% over 30d; saves $151.84/mo
resource "aws_db_instance" "db-instance-fgvel1" {
  identifier     = "db-instance-fgvel1"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.large"    # was db.r5.large — CPU avg 15.9%, overprovisioned

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = false    # was true — dev environment does not require Multi-AZ failover

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-fgvel1"
    Environment = "dev"
  }
}

# ── db-instance-o0kkum (Environment: production) ────────────────────────────
# No changes in this scope — production instance is outside the optimization criteria evaluated.
# (R1 applies to non-production only; R2 threshold requires further production-context review.)
resource "aws_db_instance" "db-instance-o0kkum" {
  identifier     = "db-instance-o0kkum"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.r5.large"

  allocated_storage = 100
  storage_type      = "gp3"

  multi_az = true

  backup_retention_period = 7

  skip_final_snapshot = false

  tags = {
    Name        = "db-instance-o0kkum"
    Environment = "production"
  }
}