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

resource "aws_redshift_cluster" "redshift-cluster-z1bm1r" {
  cluster_identifier = "analytics-prod"
  database_name      = "analytics"
  master_username    = "admin"
  master_password    = var.redshift_master_password
  node_type          = "ra3.xlplus"
  number_of_nodes    = 4

  encrypted = true

  skip_final_snapshot = false

  tags = {
    Name     = "redshift-cluster-z1bm1r"
    Schedule = "always-on"
  }
}

resource "aws_redshift_cluster" "redshift-cluster-cr3e6k" {
  cluster_identifier = "analytics-scheduled"
  database_name      = "analytics"
  master_username    = "admin"
  master_password    = var.redshift_master_password
  node_type          = "ra3.xlplus"
  number_of_nodes    = 4

  encrypted = true

  skip_final_snapshot = false

  tags = {
    Name     = "redshift-cluster-cr3e6k"
    Schedule = "paused-nights-weekends"
  }
}

# Redshift scheduled actions for pause/resume
resource "aws_redshift_scheduled_action" "redshift-cluster-cr3e6k_pause" {
  name     = "redshift-cluster-cr3e6k-pause"
  schedule = "cron(0 18 ? * MON-FRI *)"
  iam_role = aws_iam_role.redshift-cluster-cr3e6k_scheduler_role.arn

  target_action {
    pause_cluster {
      cluster_identifier = aws_redshift_cluster.redshift-cluster-cr3e6k.cluster_identifier
    }
  }
}

resource "aws_redshift_scheduled_action" "redshift-cluster-cr3e6k_resume" {
  name     = "redshift-cluster-cr3e6k-resume"
  schedule = "cron(0 9 ? * MON-FRI *)"
  iam_role = aws_iam_role.redshift-cluster-cr3e6k_scheduler_role.arn

  target_action {
    resume_cluster {
      cluster_identifier = aws_redshift_cluster.redshift-cluster-cr3e6k.cluster_identifier
    }
  }
}

