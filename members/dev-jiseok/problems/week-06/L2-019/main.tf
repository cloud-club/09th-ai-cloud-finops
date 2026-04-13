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

resource "aws_elasticache_replication_group" "elasticache-replication-group-t8415t" {
  replication_group_id = "elasticache-replication-group-t8415t"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 6
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-t8415t.name
  security_group_ids = [aws_security_group.elasticache-replication-group-t8415t_sg.id]

  tags = {
    Name = "elasticache-replication-group-t8415t"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-t8415t" {
  name       = "elasticache-replication-group-t8415t-subnet-group"
  subnet_ids = var.private_subnet_ids
}

resource "aws_elasticache_replication_group" "elasticache-replication-group-yzkamr" {
  replication_group_id = "elasticache-replication-group-yzkamr"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 2
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-yzkamr.name
  security_group_ids = [aws_security_group.elasticache-replication-group-yzkamr_sg.id]

  tags = {
    Name = "elasticache-replication-group-yzkamr"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-yzkamr" {
  name       = "elasticache-replication-group-yzkamr-subnet-group"
  subnet_ids = var.private_subnet_ids
}

