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

resource "aws_lambda_function" "lambda-function-98yt4a" {
  function_name = "lambda-function-98yt4a"
  role          = aws_iam_role.lambda-function-98yt4a_role.arn
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
    Name = "lambda-function-98yt4a"
  }
}

resource "aws_lambda_function" "lambda-function-ezac3t" {
  function_name = "lambda-function-ezac3t"
  role          = aws_iam_role.lambda-function-ezac3t_role.arn
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
    Name = "lambda-function-ezac3t"
  }
}

resource "aws_lambda_function" "lambda-function-s8yjly" {
  function_name = "lambda-function-s8yjly"
  role          = aws_iam_role.lambda-function-s8yjly_role.arn
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
    Name = "lambda-function-s8yjly"
  }
}

