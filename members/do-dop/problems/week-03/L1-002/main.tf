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

resource "aws_ebs_volume" "ebs-volume-52of2v" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-52of2v"
  }
}

resource "aws_ebs_volume" "ebs-volume-pyhjhz" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-pyhjhz"
  }
}

resource "aws_ebs_volume" "ebs-volume-n4lptk" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-n4lptk"
  }
}

resource "aws_ebs_volume" "ebs-volume-5659m1" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-5659m1"
  }
}

resource "aws_ebs_volume" "ebs-volume-kxv33s" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-kxv33s"
  }
}

resource "aws_ebs_volume" "ebs-volume-9z3mxc" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-9z3mxc"
  }
}

resource "aws_ebs_volume" "ebs-volume-ecjiiz" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-ecjiiz"
  }
}

resource "aws_ebs_volume" "ebs-volume-mlpq9t" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-mlpq9t"
  }
}

resource "aws_ebs_volume" "ebs-volume-h8kbcq" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-h8kbcq"
  }
}

resource "aws_ebs_volume" "ebs-volume-u4vm8p" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-u4vm8p"
  }
}

resource "aws_ebs_volume" "ebs-volume-pwrgck" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-pwrgck"
  }
}

resource "aws_ebs_volume" "ebs-volume-7ss65b" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-7ss65b"
  }
}

resource "aws_ebs_volume" "ebs-volume-12gpe8" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-12gpe8"
  }
}

resource "aws_ebs_volume" "ebs-volume-kww7hq" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-kww7hq"
  }
}

resource "aws_ebs_volume" "ebs-volume-7w3815" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-7w3815"
  }
}

