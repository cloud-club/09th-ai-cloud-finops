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

resource "aws_lb" "lb-z6rke5" {
  name               = "lb-z6rke5"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-z6rke5_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-z6rke5"
  }
}

resource "aws_lb" "lb-k23o6n" {
  name               = "lb-k23o6n"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-k23o6n_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-k23o6n"
  }
}

resource "aws_lb" "lb-uqnvvs" {
  name               = "lb-uqnvvs"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb-uqnvvs_sg.id]
  subnets = var.public_subnet_ids

  tags = {
    Name = "lb-uqnvvs"
  }
}

