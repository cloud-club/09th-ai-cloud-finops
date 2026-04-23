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

resource "aws_vpc_endpoint" "vpc-endpoint-bj68by" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.private_subnet_ids
  security_group_ids = [aws_security_group.vpc-endpoint-bj68by_sg.id]

  private_dns_enabled = true

  tags = {
    Name = "vpc-endpoint-bj68by"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-6ku3tx" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.dynamodb"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.private_subnet_ids
  security_group_ids = [aws_security_group.vpc-endpoint-6ku3tx_sg.id]

  private_dns_enabled = true

  tags = {
    Name = "vpc-endpoint-6ku3tx"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-fjlu7q" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.sqs"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.private_route_table_ids

  tags = {
    Name = "vpc-endpoint-fjlu7q"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-e41evu" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.sns"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.private_route_table_ids

  tags = {
    Name = "vpc-endpoint-e41evu"
  }
}

