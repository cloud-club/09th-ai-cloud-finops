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

# 최적화: timeout 900초 → 10초 (에러 과금 99% 절감)
# 근거: avg_duration ~2s, P99 ~6s → 10초 여유 포함
resource "aws_lambda_function" "lambda-function-zspoqd" {
  function_name = "lambda-function-zspoqd"
  role          = aws_iam_role.lambda-function-zspoqd_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 1024
  timeout     = 10

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-zspoqd"
  }
}

# 최적화: timeout 900초 → 10초 (에러 과금 99% 절감)
# 근거: avg_duration ~2.5s, P99 ~6s → 10초 여유 포함
resource "aws_lambda_function" "lambda-function-mfra1j" {
  function_name = "lambda-function-mfra1j"
  role          = aws_iam_role.lambda-function-mfra1j_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 1024
  timeout     = 10

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-mfra1j"
  }
}

# 최적화: memory_size 1024MB → 256MB (100ms 상수 실행, 메모리 오버프로비저닝)
# timeout 30초 → 10초 (100ms 대비 300배 과잉)
resource "aws_lambda_function" "lambda-function-6apyi7" {
  function_name = "lambda-function-6apyi7"
  role          = aws_iam_role.lambda-function-6apyi7_role.arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"

  memory_size = 256
  timeout     = 10

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-6apyi7"
  }
}