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

# instance-yci6cs removed from managed infrastructure based on FinOps analysis:
# - 30-day idle state (CPU/network/EBS I/O all 0)
# - estimated monthly savings: $315.84
# Before apply, confirm the instance is no longer needed.
# If you want to preserve it without compute charges, consider stopping it outside this tf
# workflow or redesigning this resource with a conditional flag instead of deleting it.

resource "aws_ebs_volume" "ebs-volume-2cuf7d" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp3"
  iops              = 3000
  throughput        = 125

  encrypted = true

  tags = {
    Name       = "ebs-volume-2cuf7d"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-xg2vau" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp3"
  iops              = 3000
  throughput        = 125

  encrypted = true

  tags = {
    Name       = "ebs-volume-xg2vau"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_ebs_volume" "ebs-volume-g7gp3h" {
  availability_zone = "ap-northeast-2a"
  size              = 500
  type              = "gp3"
  iops              = 3000
  throughput        = 125

  encrypted = true

  tags = {
    Name       = "ebs-volume-g7gp3h"
    AttachedTo = "stopped_instance"
  }
}

resource "aws_instance" "instance-m3p6z3" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name = "instance-m3p6z3"
  }
}

resource "aws_instance" "instance-o6oozr" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name = "instance-o6oozr"
  }
}