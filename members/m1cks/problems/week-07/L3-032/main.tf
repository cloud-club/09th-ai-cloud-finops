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

resource "aws_instance" "instance-iy7f2t" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-iy7f2t"
  }
}

resource "aws_instance" "instance-b3wtca" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-b3wtca"
  }
}

resource "aws_instance" "instance-a75ia3" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-a75ia3"
  }
}

resource "aws_instance" "instance-t3alw3" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-t3alw3"
  }
}

resource "aws_instance" "instance-g28frq" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-g28frq"
  }
}

resource "aws_instance" "instance-7q3rq8" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-7q3rq8"
  }
}

resource "aws_instance" "instance-295cqe" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-295cqe"
  }
}

resource "aws_instance" "instance-surc3p" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-surc3p"
  }
}

resource "aws_instance" "instance-por0ca" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-por0ca"
  }
}

resource "aws_instance" "instance-726udz" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-726udz"
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-tlv46h
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-tlv46h" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-c78910
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-c78910" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-qlpsdj
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-qlpsdj" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-9i2ptm
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-9i2ptm" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-ntrzlq
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-ntrzlq" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-mkxfci
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-mkxfci" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-dc0gj0
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-dc0gj0" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-1xbor4
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-1xbor4" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-aork3q
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-aork3q" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-hlcyzt
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.xlarge
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    0%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-hlcyzt" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

resource "aws_instance" "instance-ixm95p" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-ixm95p"
  }
}

resource "aws_instance" "instance-7w8re6" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-7w8re6"
  }
}

resource "aws_instance" "instance-hikrqe" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-hikrqe"
  }
}

resource "aws_instance" "instance-6zb6h7" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-6zb6h7"
  }
}

resource "aws_instance" "instance-mzsn9a" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mzsn9a"
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-211h80
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.large
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    100%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-211h80" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-p0iorc
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.large
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    100%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-p0iorc" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-70womf
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.large
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    100%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-70womf" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-vqas9y
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.large
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    100%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-vqas9y" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-ca1mxn
# ──────────────────────────────────────────────────────────────────────────
# Reserved Instances are purchase commitments, not Terraform-managed
# resources. This block documents the RI for visibility in the IaC codebase.
#
# Instance Type:  m5.large
# Offering Type:  All Upfront
# Term:           1yr
# State:          active
# Utilization:    100%
# Count:          1
#
# To query RI status via AWS CLI:
#   aws ec2 describe-reserved-instances --filters Name=state,Values=active

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-ca1mxn" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

