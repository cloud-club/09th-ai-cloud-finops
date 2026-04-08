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

resource "aws_instance" "instance-abn9yy" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-abn9yy"
  }
}

resource "aws_ebs_volume" "ebs-volume-fskl02" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-fskl02"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-82whnf" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-82whnf"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-62foz0" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-62foz0"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_instance" "instance-bwsymv" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-bwsymv"
  }
}

resource "aws_instance" "instance-2u32cm" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-2u32cm"
  }
}

