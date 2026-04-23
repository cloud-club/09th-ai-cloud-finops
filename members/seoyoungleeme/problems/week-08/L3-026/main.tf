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

resource "aws_ec2_transit_gateway" "ec2-transit-gateway-y3bueb" {
  description = "Transit Gateway"

  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                     = "enable"

  tags = {
    Name = "ec2-transit-gateway-y3bueb"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-kqhgxx" {
  vpc_count = 2

  tags = {
    Name = "ec2-transit-gateway-vpc-attachment-kqhgxx"
  }
}
resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-59hhc6" {
  vpc_count = 2

  tags = {
    Name = "ec2-transit-gateway-vpc-attachment-59hhc6"
  }
}
resource "aws_vpc_peering_connection" "vpc-peering-connection-jjfn9p" {
  vpc_pair = "vpc-a <-> vpc-b"
  monthly_data_gb = 10000
  same_region = true

  tags = {
    Name = "vpc-peering-connection-jjfn9p"
  }
}
