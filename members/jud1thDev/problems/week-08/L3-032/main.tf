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

resource "aws_instance" "instance-acsf8j" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-acsf8j"
  }
}

resource "aws_instance" "instance-29q9iv" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-29q9iv"
  }
}

resource "aws_instance" "instance-vo3iyx" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-vo3iyx"
  }
}

resource "aws_instance" "instance-azt9lx" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-azt9lx"
  }
}

resource "aws_instance" "instance-voy770" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-voy770"
  }
}

resource "aws_instance" "instance-e0lb5g" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-e0lb5g"
  }
}

resource "aws_instance" "instance-mcwko0" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mcwko0"
  }
}

resource "aws_instance" "instance-ef6gul" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-ef6gul"
  }
}

resource "aws_instance" "instance-qjpq6z" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-qjpq6z"
  }
}

resource "aws_instance" "instance-mcswfl" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "r5.xlarge"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mcswfl"
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-9z8u5a
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-9z8u5a" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-03bdn6
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-03bdn6" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-5t4f2q
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-5t4f2q" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-6xcc14
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-6xcc14" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-emkvca
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-emkvca" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-gc23nd
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-gc23nd" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-3r5fqv
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-3r5fqv" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-nf0lwd
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-nf0lwd" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-8m2o56
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-8m2o56" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-ro7810
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-ro7810" {
  instance_type     = "m5.xlarge"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

resource "aws_instance" "instance-8fwy6n" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-8fwy6n"
  }
}

resource "aws_instance" "instance-iwwkii" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-iwwkii"
  }
}

resource "aws_instance" "instance-yw19vb" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-yw19vb"
  }
}

resource "aws_instance" "instance-vgog6c" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-vgog6c"
  }
}

resource "aws_instance" "instance-6e23j3" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-6e23j3"
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-3khv3t
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-3khv3t" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-ulz3k7
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-ulz3k7" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-n3w61p
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-n3w61p" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-3mhphq
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-3mhphq" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

# ──────────────────────────────────────────────────────────────────────────
# Reserved Instance Commitment: ec2-reserved-instances-bga6yi
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

data "aws_ec2_reserved_instances_offerings" "ec2-reserved-instances-bga6yi" {
  instance_type     = "m5.large"
  offering_type     = "All Upfront"
  product_description = "Linux/UNIX"

  filter {
    name   = "duration"
    values = ["31536000"]
  }
}

