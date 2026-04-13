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

resource "aws_lambda_function" "lambda-function-uag0oc" {
  function_name = "lambda-function-uag0oc"
  role          = aws_iam_role.lambda-function-uag0oc_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 3008
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-uag0oc"
  }
}

resource "aws_lambda_function" "lambda-function-n26u6j" {
  function_name = "lambda-function-n26u6j"
  role          = aws_iam_role.lambda-function-n26u6j_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 3008
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-n26u6j"
  }
}

resource "aws_lambda_function" "lambda-function-hfc82v" {
  function_name = "lambda-function-hfc82v"
  role          = aws_iam_role.lambda-function-hfc82v_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 3008
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-hfc82v"
  }
}

resource "aws_lambda_function" "lambda-function-e0158r" {
  function_name = "lambda-function-e0158r"
  role          = aws_iam_role.lambda-function-e0158r_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 512
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-e0158r"
  }
}

resource "aws_lambda_function" "lambda-function-ps1im3" {
  function_name = "lambda-function-ps1im3"
  role          = aws_iam_role.lambda-function-ps1im3_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 512
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-ps1im3"
  }
}

