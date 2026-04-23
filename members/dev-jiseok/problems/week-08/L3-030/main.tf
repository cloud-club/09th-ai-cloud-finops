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

resource "aws_vpn_connection" "vpn-connection-sts4yf" {
  customer_gateway_id = aws_customer_gateway.vpn-connection-sts4yf_cgw.id
  vpn_gateway_id      = aws_vpn_gateway.vpn-connection-sts4yf_vgw.id
  type                = "ipsec.1"
  static_routes_only  = false

  tags = {
    Name  = "vpn-connection-sts4yf"
    State = "available"
  }
}

resource "aws_vpn_connection" "vpn-connection-noae5a" {
  customer_gateway_id = aws_customer_gateway.vpn-connection-noae5a_cgw.id
  vpn_gateway_id      = aws_vpn_gateway.vpn-connection-noae5a_vgw.id
  type                = "ipsec.1"
  static_routes_only  = false

  tags = {
    Name  = "vpn-connection-noae5a"
    State = "available"
  }
}

resource "aws_dx_connection" "dx-connection-n98amp" {
  name      = "dx-connection-n98amp"
  bandwidth = "1Gbps"
  location  = "EqSE2"

  tags = {
    Name  = "dx-connection-n98amp"
    State = "available"
  }
}

