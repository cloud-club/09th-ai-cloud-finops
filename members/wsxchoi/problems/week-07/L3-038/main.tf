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

resource "aws_eks_cluster" "eks-cluster-f8aw0n" {
  name     = "prod-main"
  role_arn = aws_iam_role.eks-cluster-f8aw0n_cluster_role.arn
  version  = "1.28"

  vpc_config {
    subnet_ids = var.private_subnet_ids
  }

  tags = {
    Name = "eks-cluster-f8aw0n"
  }
}

resource "aws_instance" "instance-kk336y" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-kk336y"
  }
}

resource "aws_instance" "instance-nhpihn" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-nhpihn"
  }
}

resource "aws_instance" "instance-yx8gd2" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-yx8gd2"
  }
}

resource "aws_instance" "instance-t362op" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-t362op"
  }
}

resource "aws_instance" "instance-mbm3ol" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mbm3ol"
  }
}

resource "aws_instance" "instance-quezdi" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-quezdi"
  }
}

resource "aws_instance" "instance-jrtilu" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-jrtilu"
  }
}

resource "aws_instance" "instance-19g0eo" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-19g0eo"
  }
}

resource "aws_instance" "instance-qofcfg" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-qofcfg"
  }
}

resource "aws_instance" "instance-xcwuv9" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-xcwuv9"
  }
}

resource "aws_instance" "instance-tuawct" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-tuawct"
  }
}

resource "aws_instance" "instance-bn3o2a" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-bn3o2a"
  }
}

resource "aws_instance" "instance-klp3vj" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-klp3vj"
  }
}

resource "aws_instance" "instance-1lh75l" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-1lh75l"
  }
}

resource "aws_instance" "instance-52eo5x" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-52eo5x"
  }
}

resource "aws_instance" "instance-5rwjn5" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-5rwjn5"
  }
}

resource "aws_instance" "instance-mkyiec" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mkyiec"
  }
}

resource "aws_instance" "instance-fylckx" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-fylckx"
  }
}

resource "aws_instance" "instance-dw8qbz" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-dw8qbz"
  }
}

resource "aws_instance" "instance-snvrtp" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.2xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-snvrtp"
  }
}

resource "aws_instance" "instance-kgx5tv" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-kgx5tv"
  }
}

resource "aws_instance" "instance-jagjfp" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-jagjfp"
  }
}

resource "aws_instance" "instance-ux2trj" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-ux2trj"
  }
}

resource "aws_instance" "instance-6gowat" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-6gowat"
  }
}

resource "aws_instance" "instance-jidbj0" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-jidbj0"
  }
}

