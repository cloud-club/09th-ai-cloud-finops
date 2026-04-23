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

resource "aws_instance" "instance-p0ly23" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-p0ly23"
  }
}

resource "aws_instance" "instance-m0cr2l" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-m0cr2l"
  }
}

resource "aws_instance" "instance-4lg2j9" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-4lg2j9"
  }
}

resource "aws_instance" "instance-mcjf4f" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mcjf4f"
  }
}

resource "aws_instance" "instance-mmb70v" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-mmb70v"
  }
}

resource "aws_lambda_function" "lambda-function-ye68wm" {
  function_name = "lambda-function-ye68wm"
  role          = aws_iam_role.lambda-function-ye68wm_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-ye68wm"
  }
}

resource "aws_lambda_function" "lambda-function-8ombjg" {
  function_name = "lambda-function-8ombjg"
  role          = aws_iam_role.lambda-function-8ombjg_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-8ombjg"
  }
}

resource "aws_lambda_function" "lambda-function-xyoahp" {
  function_name = "lambda-function-xyoahp"
  role          = aws_iam_role.lambda-function-xyoahp_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-xyoahp"
  }
}

resource "aws_lambda_function" "lambda-function-b2dob1" {
  function_name = "lambda-function-b2dob1"
  role          = aws_iam_role.lambda-function-b2dob1_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-b2dob1"
  }
}

resource "aws_lambda_function" "lambda-function-kgxith" {
  function_name = "lambda-function-kgxith"
  role          = aws_iam_role.lambda-function-kgxith_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-kgxith"
  }
}

resource "aws_lambda_function" "lambda-function-8wbhsx" {
  function_name = "lambda-function-8wbhsx"
  role          = aws_iam_role.lambda-function-8wbhsx_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-8wbhsx"
  }
}

resource "aws_lambda_function" "lambda-function-0700nd" {
  function_name = "lambda-function-0700nd"
  role          = aws_iam_role.lambda-function-0700nd_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-0700nd"
  }
}

resource "aws_lambda_function" "lambda-function-wz6d29" {
  function_name = "lambda-function-wz6d29"
  role          = aws_iam_role.lambda-function-wz6d29_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-wz6d29"
  }
}

resource "aws_ecs_service" "ecs-service-zutx0g" {
  name            = "ecs-service-zutx0g"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-zutx0g.arn
  desired_count   = 4
  launch_type     = "FARGATE"
  platform_version = "LATEST"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-zutx0g_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-zutx0g"
  }
}

resource "aws_ecs_task_definition" "ecs-service-zutx0g" {
  family                   = "ecs-service-zutx0g"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-zutx0g_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-zutx0g_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-zutx0g-app"
      image     = "nginx:latest"
      cpu       = 1024
      memory    = 2048
      essential = true
      portMappings = [
        {
          containerPort = 80
          protocol      = "tcp"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = "/ecs/ecs-service-zutx0g"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-zutx0g"
  }
}

resource "aws_ecs_service" "ecs-service-befiqh" {
  name            = "ecs-service-befiqh"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-befiqh.arn
  desired_count   = 4
  launch_type     = "FARGATE"
  platform_version = "LATEST"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-befiqh_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-befiqh"
  }
}

resource "aws_ecs_task_definition" "ecs-service-befiqh" {
  family                   = "ecs-service-befiqh"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-befiqh_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-befiqh_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-befiqh-app"
      image     = "nginx:latest"
      cpu       = 1024
      memory    = 2048
      essential = true
      portMappings = [
        {
          containerPort = 80
          protocol      = "tcp"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = "/ecs/ecs-service-befiqh"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-befiqh"
  }
}

resource "aws_ecs_service" "ecs-service-mp4b62" {
  name            = "ecs-service-mp4b62"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-mp4b62.arn
  desired_count   = 4
  launch_type     = "FARGATE"
  platform_version = "LATEST"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-mp4b62_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-mp4b62"
  }
}

resource "aws_ecs_task_definition" "ecs-service-mp4b62" {
  family                   = "ecs-service-mp4b62"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-mp4b62_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-mp4b62_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-mp4b62-app"
      image     = "nginx:latest"
      cpu       = 1024
      memory    = 2048
      essential = true
      portMappings = [
        {
          containerPort = 80
          protocol      = "tcp"
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = "/ecs/ecs-service-mp4b62"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-mp4b62"
  }
}

resource "aws_instance" "instance-vkew8v" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-vkew8v"
  }
}

resource "aws_instance" "instance-nfuysm" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-nfuysm"
  }
}

resource "aws_instance" "instance-g6jls4" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-g6jls4"
  }
}

resource "aws_instance" "instance-nea9fy" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-nea9fy"
  }
}

resource "aws_instance" "instance-jb9vgj" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-jb9vgj"
  }
}

resource "aws_instance" "instance-3cmvg9" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "c5.large"
  subnet_id     = aws_subnet.main.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
  }

  tags = {
    Name        = "instance-3cmvg9"
  }
}

resource "aws_lambda_function" "lambda-function-33scw3" {
  function_name = "lambda-function-33scw3"
  role          = aws_iam_role.lambda-function-33scw3_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-33scw3"
  }
}

resource "aws_lambda_function" "lambda-function-6oovl7" {
  function_name = "lambda-function-6oovl7"
  role          = aws_iam_role.lambda-function-6oovl7_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-6oovl7"
  }
}

resource "aws_lambda_function" "lambda-function-iodxxg" {
  function_name = "lambda-function-iodxxg"
  role          = aws_iam_role.lambda-function-iodxxg_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-iodxxg"
  }
}

resource "aws_lambda_function" "lambda-function-b6ywa6" {
  function_name = "lambda-function-b6ywa6"
  role          = aws_iam_role.lambda-function-b6ywa6_role.arn
  handler       = "index.handler"
  runtime       = "python3.11"

  memory_size = 128
  timeout     = 30

  environment {
    variables = {
      ENVIRONMENT = "production"
    }
  }

  tags = {
    Name = "lambda-function-b6ywa6"
  }
}

