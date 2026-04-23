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

resource "aws_ec2_transit_gateway" "ec2-transit-gateway-bw4z4k" {
  description = "Transit Gateway"

  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                     = "enable"

  tags = {
    Name = "ec2-transit-gateway-bw4z4k"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-6kc48m" {
  vpc_count = 2

  tags = {
    Name = "ec2-transit-gateway-vpc-attachment-6kc48m"
  }
}
resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-l7u6w1" {
  vpc_count = 2

  tags = {
    Name = "ec2-transit-gateway-vpc-attachment-l7u6w1"
  }
}
resource "aws_vpc_peering_connection" "vpc-peering-connection-u6w0t0" {
  vpc_pair = "vpc-a <-> vpc-b"
  monthly_data_gb = 10000
  same_region = true

  tags = {
    Name = "vpc-peering-connection-u6w0t0"
  }
}
