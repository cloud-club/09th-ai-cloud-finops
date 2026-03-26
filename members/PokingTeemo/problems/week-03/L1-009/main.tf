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

resource "aws_ecr_repository" "ecr-repository-z3751z" {
  name                 = "ecr-repository-z3751z"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-z3751z"
  }
}

resource "aws_ecr_repository" "ecr-repository-7ftnao" {
  name                 = "ecr-repository-7ftnao"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-7ftnao"
  }
}

resource "aws_ecr_repository" "ecr-repository-f71kxe" {
  name                 = "ecr-repository-f71kxe"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-f71kxe"
  }
}

resource "aws_ecr_repository" "ecr-repository-692yw6" {
  name                 = "ecr-repository-692yw6"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-692yw6"
  }
}

resource "aws_ecr_lifecycle_policy" "ecr-repository-692yw6" {
  repository = aws_ecr_repository.ecr-repository-692yw6.name

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

resource "aws_ecr_repository" "ecr-repository-fjf9jw" {
  name                 = "ecr-repository-fjf9jw"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "ecr-repository-fjf9jw"
  }
}

resource "aws_ecr_lifecycle_policy" "ecr-repository-fjf9jw" {
  repository = aws_ecr_repository.ecr-repository-fjf9jw.name

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

