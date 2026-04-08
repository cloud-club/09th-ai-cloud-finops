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

resource "aws_ecr_repository" "ecr-repository-x6h83c" {
  name                 = "ecr-repository-x6h83c"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-x6h83c"
  }
}

resource "aws_ecr_repository" "ecr-repository-oo2gsw" {
  name                 = "ecr-repository-oo2gsw"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-oo2gsw"
  }
}

resource "aws_ecr_repository" "ecr-repository-4d3i9x" {
  name                 = "ecr-repository-4d3i9x"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-4d3i9x"
  }
}

resource "aws_ecr_repository" "ecr-repository-qyefir" {
  name                 = "ecr-repository-qyefir"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-qyefir"
  }
}

resource "aws_ecr_lifecycle_policy" "ecr-repository-qyefir" {
  repository = aws_ecr_repository.ecr-repository-qyefir.name

  policy = jsonencode({
    rules = [
      {
        rulePriority = 1
        description  = "Keep last 10 images"
        selection = {
          tagStatus   = "any"
          countType   = "imageCountMoreThan"
          countNumber = 10
        }
        action = {
          type = "expire"
        }
      }
    ]
  })
}

resource "aws_ecr_repository" "ecr-repository-2sg65l" {
  name                 = "ecr-repository-2sg65l"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-2sg65l"
  }
}

resource "aws_ecr_lifecycle_policy" "ecr-repository-2sg65l" {
  repository = aws_ecr_repository.ecr-repository-2sg65l.name

  policy = jsonencode({
    rules = [
      {
        rulePriority = 1
        description  = "Keep last 10 images"
        selection = {
          tagStatus   = "any"
          countType   = "imageCountMoreThan"
          countNumber = 10
        }
        action = {
          type = "expire"
        }
      }
    ]
  })
}

