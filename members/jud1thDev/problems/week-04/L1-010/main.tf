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

resource "aws_dynamodb_table" "dynamodb-table-60j8pj" {
  name         = "dynamodb-table-60j8pj"
  billing_mode = "PROVISIONED"

  hash_key  = "id"

  attribute {
    name = "id"
    type = "S"
  }

  read_capacity  = 5000
  write_capacity = 1000

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-60j8pj"
  }
}

resource "aws_dynamodb_table" "dynamodb-table-n4xeux" {
  name         = "dynamodb-table-n4xeux"
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = "id"

  attribute {
    name = "id"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = {
    Name = "dynamodb-table-n4xeux"
  }
}

