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

resource "aws_eip" "eip-4gmyw0" {
  domain = "vpc"

  tags = {
    Name = "eip-4gmyw0"
  }
}

resource "aws_eip" "eip-t2858o" {
  domain = "vpc"

  tags = {
    Name = "eip-t2858o"
  }
}

resource "aws_eip" "eip-ytaz9c" {
  domain = "vpc"

  tags = {
    Name = "eip-ytaz9c"
  }
}

resource "aws_eip" "eip-q4zl0g" {
  domain = "vpc"

  tags = {
    Name = "eip-q4zl0g"
  }
}

resource "aws_eip" "eip-dsy7sl" {
  domain = "vpc"

  tags = {
    Name = "eip-dsy7sl"
  }
}

resource "aws_eip" "eip-3cc83r" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-3cc83r"
  }
}

resource "aws_eip" "eip-pcjg4g" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-pcjg4g"
  }
}

resource "aws_eip" "eip-r1egcf" {
  domain = "vpc"

  instance = aws_instance.running_instance.id

  tags = {
    Name = "eip-r1egcf"
  }
}

