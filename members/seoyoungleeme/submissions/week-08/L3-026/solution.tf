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

# =============================================================================
# FINOPS: ec2-transit-gateway-y3bueb - migrate simple same-region VPC-to-VPC
# traffic away from Transit Gateway data processing and onto VPC Peering.
#
# Evidence:
# - main.tf has 1 Transit Gateway and 2 TGW VPC attachments.
# - main.tf also has an existing same-region VPC Peering connection that is
#   marked non-problematic in tags_inventory.json; preserve it.
# - cost_report.json pricing_note: 10TB x $0.02/GB = $200/month TGW data
#   processing. Same-AZ VPC Peering is free for this scenario.
#
# Estimated savings: ~$200/month (~$2,400/year), before any attachment-hour
# savings. Attachment-hour savings are not counted until route/dependency checks
# confirm the TGW can be safely detached.
#
# IMPORTANT CUTOVER ORDER:
# 1. Confirm no transitive routing, centralized inspection, VPN/DX, or
#    multi-account routing depends on the TGW.
# 2. Confirm VPC CIDRs do not overlap and SG/NACL rules allow peering traffic.
# 3. Move routes for the high-volume VPC-to-VPC path to VPC Peering.
# 4. Monitor TGW bytes and application metrics for 7 days.
# 5. Only then remove TGW attachments and the TGW.
# =============================================================================

# PHASE 2 REMOVAL CANDIDATE after the cutover checks above pass.
# resource "aws_ec2_transit_gateway" "ec2-transit-gateway-y3bueb" {
#   description = "Transit Gateway"
#
#   default_route_table_association = "enable"
#   default_route_table_propagation = "enable"
#   dns_support                     = "enable"
#
#   tags = {
#     Name       = "ec2-transit-gateway-y3bueb"
#     Owner      = "charlie@example.com"
#     Service    = "networking" # Added for cost ownership
#     Team       = "platform"   # VERIFY: set from network owner registry
#     Env        = "staging"    # VERIFY: inferred from scenario context
#     CostCenter = "VERIFY-FROM-CMDB"
#   }
# }

# PHASE 2 REMOVAL CANDIDATE: detach only after TGW route table references are gone.
# resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-kqhgxx" {
#   vpc_count = 2
#
#   tags = {
#     Name       = "ec2-transit-gateway-vpc-attachment-kqhgxx"
#     Owner      = "bob@example.com"
#     Service    = "networking"
#     Team       = "platform"
#     Env        = "staging"
#     CostCenter = "VERIFY-FROM-CMDB"
#   }
# }

# PHASE 2 REMOVAL CANDIDATE: detach only after TGW route table references are gone.
# resource "aws_ec2_transit_gateway_vpc_attachment" "ec2-transit-gateway-vpc-attachment-59hhc6" {
#   vpc_count = 2
#
#   tags = {
#     Name       = "ec2-transit-gateway-vpc-attachment-59hhc6"
#     Owner      = "bob@example.com"
#     Service    = "networking"
#     Team       = "platform"
#     Env        = "staging"
#     CostCenter = "VERIFY-FROM-CMDB"
#   }
# }

# Existing compliant VPC Peering path. Preserve this decoy/healthy resource.
resource "aws_vpc_peering_connection" "vpc-peering-connection-jjfn9p" {
  vpc_pair        = "vpc-a <-> vpc-b"
  monthly_data_gb = 10000
  same_region     = true

  tags = {
    Name       = "vpc-peering-connection-jjfn9p"
    Service    = "api"
    Team       = "backend"
    Env        = "staging"
    CostCenter = "CC-198"
    Owner      = "devops@example.com"
  }
}