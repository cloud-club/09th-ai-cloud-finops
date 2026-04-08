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

resource "aws_dynamodb_table" "dynamodb-table-c53qiq" {
  name         = "dynamodb-table-c53qiq"
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
    Name = "dynamodb-table-c53qiq"
  }
}

resource "aws_dynamodb_table" "dynamodb-table-am0yhj" {
  name         = "dynamodb-table-am0yhj"
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
    Name = "dynamodb-table-am0yhj"
  }
}

