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

resource "aws_ebs_volume" "ebs-volume-dsw4lu" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-dsw4lu"
  }
}

resource "aws_ebs_volume" "ebs-volume-fx4sld" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-fx4sld"
  }
}

resource "aws_ebs_volume" "ebs-volume-0kb9hc" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-0kb9hc"
  }
}

resource "aws_ebs_volume" "ebs-volume-jzay9q" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-jzay9q"
  }
}

resource "aws_ebs_volume" "ebs-volume-5y3lvz" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-5y3lvz"
  }
}

resource "aws_ebs_volume" "ebs-volume-jt1k57" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-jt1k57"
  }
}

resource "aws_ebs_volume" "ebs-volume-wtj7n2" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-wtj7n2"
  }
}

resource "aws_ebs_volume" "ebs-volume-p0rkuy" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-p0rkuy"
  }
}

resource "aws_ebs_volume" "ebs-volume-yp7zay" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-yp7zay"
  }
}

resource "aws_ebs_volume" "ebs-volume-10nvbc" {
  availability_zone = "ap-northeast-2a"
  size              = 200
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-10nvbc"
  }
}

resource "aws_ebs_volume" "ebs-volume-j0n1ff" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-j0n1ff"
  }
}

resource "aws_ebs_volume" "ebs-volume-3vhglm" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-3vhglm"
  }
}

resource "aws_ebs_volume" "ebs-volume-twpjfh" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-twpjfh"
  }
}

resource "aws_ebs_volume" "ebs-volume-j7s5ry" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-j7s5ry"
  }
}

resource "aws_ebs_volume" "ebs-volume-z7hjeb" {
  availability_zone = "ap-northeast-2a"
  size              = 100
  type              = "gp3"

  encrypted = true

  tags = {
    Name = "ebs-volume-z7hjeb"
  }
}