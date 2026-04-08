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

resource "aws_instance" "instance-z6gvv2" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-z6gvv2"
  }
}

resource "aws_ebs_volume" "ebs-volume-0fb0x1" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-0fb0x1"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-j7ne6k" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-j7ne6k"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-obpats" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp2"

  encrypted = true

  tags = {
    Name = "ebs-volume-obpats"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_instance" "instance-6cco5d" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-6cco5d"
  }
}

resource "aws_instance" "instance-fev9iu" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-fev9iu"
  }
}

