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

resource "aws_vpc_endpoint" "vpc-endpoint-tgr4jg" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.private_subnet_ids
  security_group_ids = [aws_security_group.vpc-endpoint-tgr4jg_sg.id]

  private_dns_enabled = true

  tags = {
    Name = "vpc-endpoint-tgr4jg"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-pplbmf" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.dynamodb"
  vpc_endpoint_type = "Interface"

  subnet_ids         = var.private_subnet_ids
  security_group_ids = [aws_security_group.vpc-endpoint-pplbmf_sg.id]

  private_dns_enabled = true

  tags = {
    Name = "vpc-endpoint-pplbmf"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-3rjexc" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.sqs"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.private_route_table_ids

  tags = {
    Name = "vpc-endpoint-3rjexc"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-e1j1m9" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.sns"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.private_route_table_ids

  tags = {
    Name = "vpc-endpoint-e1j1m9"
  }
}

