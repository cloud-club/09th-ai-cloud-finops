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

resource "aws_eip" "eip-hfw086" {
  domain = "vpc"

  tags = {
    Name = "eip-hfw086"
  }
}

resource "aws_eip" "eip-q7zkiq" {
  domain = "vpc"

  tags = {
    Name = "eip-q7zkiq"
  }
}

resource "aws_eip" "eip-01hq7s" {
  domain = "vpc"

  tags = {
    Name = "eip-01hq7s"
  }
}

resource "aws_eip" "eip-4dt9a6" {
  domain = "vpc"

  tags = {
    Name = "eip-4dt9a6"
  }
}

resource "aws_eip" "eip-0hcrba" {
  domain = "vpc"

  tags = {
    Name = "eip-0hcrba"
  }
}

resource "aws_eip" "eip-5mnlvi" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-5mnlvi"
  }
}

resource "aws_eip" "eip-p1jfa9" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-p1jfa9"
  }
}

resource "aws_eip" "eip-ce44hv" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-ce44hv"
  }
}

