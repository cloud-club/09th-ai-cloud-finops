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

resource "aws_eks_cluster" "eks-cluster-e0zj1q" {
  name     = "prod-main"
  role_arn = aws_iam_role.eks-cluster-e0zj1q_cluster_role.arn
  version  = "1.28"

  vpc_config {
    subnet_ids = var.private_subnet_ids
  }

  tags = {
    Name = "eks-cluster-e0zj1q"
  }
}

resource "aws_instance" "instance-7jcbir" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-7jcbir"
  }
}

resource "aws_instance" "instance-7885pa" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-7885pa"
  }
}

resource "aws_instance" "instance-188dni" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-188dni"
  }
}

resource "aws_instance" "instance-ae40p5" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-ae40p5"
  }
}

resource "aws_instance" "instance-jbadne" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-jbadne"
  }
}

resource "aws_instance" "instance-mz3no0" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mz3no0"
  }
}

resource "aws_instance" "instance-re37pl" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-re37pl"
  }
}

resource "aws_instance" "instance-v1r6se" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-v1r6se"
  }
}

resource "aws_instance" "instance-wlo4bp" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-wlo4bp"
  }
}

resource "aws_instance" "instance-qvvi5e" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-qvvi5e"
  }
}

resource "aws_instance" "instance-cnw15a" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-cnw15a"
  }
}

resource "aws_instance" "instance-tyskjq" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-tyskjq"
  }
}

resource "aws_instance" "instance-nqi5p1" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-nqi5p1"
  }
}

resource "aws_instance" "instance-nvy6zn" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-nvy6zn"
  }
}

resource "aws_instance" "instance-vtbo3m" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-vtbo3m"
  }
}

resource "aws_instance" "instance-pgx1w7" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-pgx1w7"
  }
}

resource "aws_instance" "instance-99cwl1" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-99cwl1"
  }
}

resource "aws_instance" "instance-i5imr7" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-i5imr7"
  }
}

resource "aws_instance" "instance-etijmz" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-etijmz"
  }
}

resource "aws_instance" "instance-3j2kjn" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-3j2kjn"
  }
}

resource "aws_instance" "instance-5imq32" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-5imq32"
  }
}

resource "aws_instance" "instance-gzdkbn" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-gzdkbn"
  }
}

resource "aws_instance" "instance-4qrzdt" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-4qrzdt"
  }
}

resource "aws_instance" "instance-ucdpwl" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-ucdpwl"
  }
}

resource "aws_instance" "instance-lvmh4u" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-lvmh4u"
  }
}

