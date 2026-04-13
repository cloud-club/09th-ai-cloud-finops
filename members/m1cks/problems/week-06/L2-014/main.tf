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

resource "aws_lambda_function" "lambda-function-oycs3i" {
  function_name = "lambda-function-oycs3i"
  role          = aws_iam_role.lambda-function-oycs3i_role.arn
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
    Name = "lambda-function-oycs3i"
  }
}

resource "aws_lambda_function" "lambda-function-fl3urm" {
  function_name = "lambda-function-fl3urm"
  role          = aws_iam_role.lambda-function-fl3urm_role.arn
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
    Name = "lambda-function-fl3urm"
  }
}

resource "aws_lambda_function" "lambda-function-63wtbt" {
  function_name = "lambda-function-63wtbt"
  role          = aws_iam_role.lambda-function-63wtbt_role.arn
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
    Name = "lambda-function-63wtbt"
  }
}

resource "aws_lambda_function" "lambda-function-v17j3o" {
  function_name = "lambda-function-v17j3o"
  role          = aws_iam_role.lambda-function-v17j3o_role.arn
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
    Name = "lambda-function-v17j3o"
  }
}

resource "aws_lambda_function" "lambda-function-jepj6c" {
  function_name = "lambda-function-jepj6c"
  role          = aws_iam_role.lambda-function-jepj6c_role.arn
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
    Name = "lambda-function-jepj6c"
  }
}

