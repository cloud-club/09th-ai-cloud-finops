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

resource "aws_elasticache_replication_group" "elasticache-replication-group-rpbc81" {
  replication_group_id = "elasticache-replication-group-rpbc81"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 6
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-rpbc81.name
  security_group_ids = [aws_security_group.elasticache-replication-group-rpbc81_sg.id]

  tags = {
    Name = "elasticache-replication-group-rpbc81"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-rpbc81" {
  name       = "elasticache-replication-group-rpbc81-subnet-group"
  subnet_ids = var.private_subnet_ids
}

resource "aws_elasticache_replication_group" "elasticache-replication-group-2f0eju" {
  replication_group_id = "elasticache-replication-group-2f0eju"
  description          = "Redis replication group"

  node_type            = "cache.r5.large"
  num_cache_clusters   = 2
  engine               = "redis"
  engine_version       = "7.0"

  automatic_failover_enabled = true

  port = 6379

  subnet_group_name  = aws_elasticache_subnet_group.elasticache-replication-group-2f0eju.name
  security_group_ids = [aws_security_group.elasticache-replication-group-2f0eju_sg.id]

  tags = {
    Name = "elasticache-replication-group-2f0eju"
  }
}

resource "aws_elasticache_subnet_group" "elasticache-replication-group-2f0eju" {
  name       = "elasticache-replication-group-2f0eju-subnet-group"
  subnet_ids = var.private_subnet_ids
}

