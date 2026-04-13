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

resource "aws_elasticache_replication_group" "elasticache-replication-group-k1b93b" {
  replication_group_id = "elasticache-replication-group-k1b93b"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 6
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-k1b93b.name
  security_group_ids = [aws_security_group.elasticache-replication-group-k1b93b_sg.id]

  tags = {
    Name = "elasticache-replication-group-k1b93b"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-k1b93b" {
  name       = "elasticache-replication-group-k1b93b-subnet-group"
  subnet_ids = var.private_subnet_ids
}

resource "aws_elasticache_replication_group" "elasticache-replication-group-31362i" {
  replication_group_id = "elasticache-replication-group-31362i"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 2
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-31362i.name
  security_group_ids = [aws_security_group.elasticache-replication-group-31362i_sg.id]

  tags = {
    Name = "elasticache-replication-group-31362i"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-31362i" {
  name       = "elasticache-replication-group-31362i-subnet-group"
  subnet_ids = var.private_subnet_ids
}

