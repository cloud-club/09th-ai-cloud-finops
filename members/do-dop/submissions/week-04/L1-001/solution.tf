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

  # unused로 판단된 아래 리소스는 제거
  # - aws_instance.instance-z6gvv2
  # - aws_ebs_volume.ebs-volume-0fb0x1
  # - aws_ebs_volume.ebs-volume-j7ne6k
  # - aws_ebs_volume.ebs-volume-obpats

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
      Name = "instance-6cco5d"
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
      Name = "instance-fev9iu"
    }
  }