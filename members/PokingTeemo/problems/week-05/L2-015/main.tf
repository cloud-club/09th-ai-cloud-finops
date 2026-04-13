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

resource "aws_lambda_function" "lambda-function-crwgeg" {
  function_name = "lambda-function-crwgeg"
  role          = aws_iam_role.lambda-function-crwgeg_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 1024
  timeout     = 900

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-crwgeg"
  }
}

resource "aws_lambda_function" "lambda-function-a5skop" {
  function_name = "lambda-function-a5skop"
  role          = aws_iam_role.lambda-function-a5skop_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 1024
  timeout     = 900

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-a5skop"
  }
}

resource "aws_lambda_function" "lambda-function-m1nzz0" {
  function_name = "lambda-function-m1nzz0"
  role          = aws_iam_role.lambda-function-m1nzz0_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 1024
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-m1nzz0"
  }
}

