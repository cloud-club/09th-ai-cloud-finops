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

resource "aws_lambda_function" "lambda-function-zspoqd" {
  function_name = "lambda-function-zspoqd"
  role          = aws_iam_role.lambda-function-zspoqd_role.arn
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
    Name = "lambda-function-zspoqd"
  }
}

resource "aws_lambda_function" "lambda-function-mfra1j" {
  function_name = "lambda-function-mfra1j"
  role          = aws_iam_role.lambda-function-mfra1j_role.arn
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
    Name = "lambda-function-mfra1j"
  }
}

resource "aws_lambda_function" "lambda-function-6apyi7" {
  function_name = "lambda-function-6apyi7"
  role          = aws_iam_role.lambda-function-6apyi7_role.arn
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
    Name = "lambda-function-6apyi7"
  }
}

