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

resource "aws_elasticache_replication_group" "elasticache-replication-group-b6mbup" {
  replication_group_id = "elasticache-replication-group-b6mbup"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 6
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-b6mbup.name
  security_group_ids = [aws_security_group.elasticache-replication-group-b6mbup_sg.id]

  tags = {
    Name = "elasticache-replication-group-b6mbup"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-b6mbup" {
  name       = "elasticache-replication-group-b6mbup-subnet-group"
  subnet_ids = var.private_subnet_ids
}

resource "aws_elasticache_replication_group" "elasticache-replication-group-hvjiat" {
  replication_group_id = "elasticache-replication-group-hvjiat"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 2
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-hvjiat.name
  security_group_ids = [aws_security_group.elasticache-replication-group-hvjiat_sg.id]

  tags = {
    Name = "elasticache-replication-group-hvjiat"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-hvjiat" {
  name       = "elasticache-replication-group-hvjiat-subnet-group"
  subnet_ids = var.private_subnet_ids
}

