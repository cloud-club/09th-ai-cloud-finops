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

resource "aws_lb" "lb-7eeywl" {
  name               = "lb-7eeywl"
  internal           = false
  load_balancer_type = "network"
  security_groups    = []
  subnets = var.public_subnet_ids

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "lb-7eeywl"
  }
}

resource "aws_lb" "lb-mxw5b4" {
  name               = "lb-mxw5b4"
  internal           = false
  load_balancer_type = "network"
  security_groups    = []
  subnets = var.public_subnet_ids

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "lb-mxw5b4"
  }
}

resource "aws_lb" "lb-merba2" {
  name               = "lb-merba2"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-merba2_sg.id]
  subnets = var.public_subnet_ids

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "lb-merba2"
  }
}

