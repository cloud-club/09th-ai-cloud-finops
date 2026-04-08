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

resource "aws_lb" "lb-eujdyx" {
  name               = "lb-eujdyx"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-eujdyx_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-eujdyx"
  }
}

resource "aws_lb" "lb-zofb2m" {
  name               = "lb-zofb2m"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-zofb2m_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-zofb2m"
  }
}

resource "aws_lb" "lb-g90nve" {
  name               = "lb-g90nve"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-g90nve_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-g90nve"
  }
}

