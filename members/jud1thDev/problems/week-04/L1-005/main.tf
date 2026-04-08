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

resource "aws_lb" "lb-vkztmw" {
  name               = "lb-vkztmw"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-vkztmw_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-vkztmw"
  }
}

resource "aws_lb" "lb-0pl0t5" {
  name               = "lb-0pl0t5"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-0pl0t5_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-0pl0t5"
  }
}

resource "aws_lb" "lb-pv06x1" {
  name               = "lb-pv06x1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-pv06x1_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-pv06x1"
  }
}

