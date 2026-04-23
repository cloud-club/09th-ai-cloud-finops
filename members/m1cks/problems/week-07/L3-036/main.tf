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

resource "aws_redshift_cluster" "redshift-cluster-cwasv6" {
  cluster_identifier = "analytics-prod"
  database_name      = "analytics"
  master_username    = "admin"
  master_password    = var.redshift_master_password
  node_type          = "ra3.xlplus"
  number_of_nodes    = 4

  encrypted = true

  skip_final_snapshot = false

  tags = {
    Name     = "redshift-cluster-cwasv6"
    Schedule = "always-on"
  }
}

resource "aws_redshift_cluster" "redshift-cluster-geb4n3" {
  cluster_identifier = "analytics-scheduled"
  database_name      = "analytics"
  master_username    = "admin"
  master_password    = var.redshift_master_password
  node_type          = "ra3.xlplus"
  number_of_nodes    = 4

  encrypted = true

  skip_final_snapshot = false

  tags = {
    Name     = "redshift-cluster-geb4n3"
    Schedule = "paused-nights-weekends"
  }
}

# Redshift scheduled actions for pause/resume
resource "aws_redshift_scheduled_action" "redshift-cluster-geb4n3_pause" {
  name     = "redshift-cluster-geb4n3-pause"
  schedule = "cron(0 18 ? * MON-FRI *)"
  iam_role = aws_iam_role.redshift-cluster-geb4n3_scheduler_role.arn

  target_action {
    pause_cluster {
      cluster_identifier = aws_redshift_cluster.redshift-cluster-geb4n3.cluster_identifier
    }
  }
}

resource "aws_redshift_scheduled_action" "redshift-cluster-geb4n3_resume" {
  name     = "redshift-cluster-geb4n3-resume"
  schedule = "cron(0 9 ? * MON-FRI *)"
  iam_role = aws_iam_role.redshift-cluster-geb4n3_scheduler_role.arn

  target_action {
    resume_cluster {
      cluster_identifier = aws_redshift_cluster.redshift-cluster-geb4n3.cluster_identifier
    }
  }
}

