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

resource "aws_instance" "instance-fv8a56" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-fv8a56"
  }
}

resource "aws_instance" "instance-2eny0e" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-2eny0e"
  }
}

resource "aws_instance" "instance-p0jh3s" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-p0jh3s"
  }
}

resource "aws_instance" "instance-x2xy4d" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-x2xy4d"
  }
}

resource "aws_instance" "instance-q3xxi4" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-q3xxi4"
  }
}

resource "aws_nat_gateway" "nat-gateway-5xmpd2" {
  allocation_id = aws_eip.nat-gateway-5xmpd2_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "nat-gateway-5xmpd2"
  }
}

resource "aws_eip" "nat-gateway-5xmpd2_eip" {
  domain = "vpc"

  tags = {
    Name = "nat-gateway-5xmpd2-eip"
  }
}

resource "aws_instance" "instance-umuajk" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-umuajk"
  }
}

resource "aws_instance" "instance-4cwdnx" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-4cwdnx"
  }
}

resource "aws_vpc_endpoint" "vpc-endpoint-dmrceu" {
  vpc_id            = aws_vpc.main.id
  service_name      = "com.amazonaws.ap-northeast-2.s3"
  vpc_endpoint_type = "Gateway"

  route_table_ids = var.private_route_table_ids

  tags = {
    Name = "vpc-endpoint-dmrceu"
  }
}

