# Optimized Terraform Configuration

# ECR Repositories (Retained: qyefir, 2sg65l)
resource "aws_ecr_repository" "ecr-repository-qyefir" {
  name = "ecr-repository-qyefir"
  storage_limit = 20 # GB
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ecr-repository-2sg65l" {
  name = "ecr-repository-2sg65l"
  storage_limit = 20 # GB
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

# ECR Lifecycle Policies
resource "aws_ecr_lifecycle_policy" "ecr-lifecycle-qyefir" {
  repository = aws_ecr_repository.ecr-repository-qyefir.name
  policy = jsonencode({
    rules = [{
      rule_priority = 1
      description   = "Keep last 10 images"
      selection     = {
        tag_status = "any"
        count_type = "imageCountMoreThan"
        count_number = 10
      }
      action = {
        type = "expire"
      }
    }]
  })
}

resource "aws_ecr_lifecycle_policy" "ecr-lifecycle-2sg65l" {
  repository = aws_ecr_repository.ecr-repository-2sg65l.name
  policy = jsonencode({
    rules = [{
      rule_priority = 1
      description   = "Keep last 10 images"
      selection     = {
        tag_status = "any"
        count_type = "imageCountMoreThan"
        count_number = 10
      }
      action = {
        type = "expire"
      }
    }]
  })
}