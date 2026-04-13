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

resource "aws_ecs_service" "ecs-service-5se6xo" {
  name            = "ecs-service-5se6xo"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-5se6xo.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-5se6xo_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-5se6xo"
  }
}

resource "aws_ecs_task_definition" "ecs-service-5se6xo" {
  family                   = "ecs-service-5se6xo"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-5se6xo_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-5se6xo_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-5se6xo-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-5se6xo"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-5se6xo"
  }
}

resource "aws_ecs_service" "ecs-service-rt6k3m" {
  name            = "ecs-service-rt6k3m"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-rt6k3m.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-rt6k3m_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-rt6k3m"
  }
}

resource "aws_ecs_task_definition" "ecs-service-rt6k3m" {
  family                   = "ecs-service-rt6k3m"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-rt6k3m_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-rt6k3m_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-rt6k3m-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-rt6k3m"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-rt6k3m"
  }
}

resource "aws_ecs_service" "ecs-service-cw8wse" {
  name            = "ecs-service-cw8wse"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-cw8wse.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-cw8wse_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-cw8wse"
  }
}

resource "aws_ecs_task_definition" "ecs-service-cw8wse" {
  family                   = "ecs-service-cw8wse"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-cw8wse_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-cw8wse_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-cw8wse-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-cw8wse"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-cw8wse"
  }
}

resource "aws_ecs_service" "ecs-service-1tp21o" {
  name            = "ecs-service-1tp21o"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-1tp21o.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-1tp21o_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-1tp21o"
  }
}

resource "aws_ecs_task_definition" "ecs-service-1tp21o" {
  family                   = "ecs-service-1tp21o"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-1tp21o_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-1tp21o_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-1tp21o-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-1tp21o"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-1tp21o"
  }
}

resource "aws_ecs_service" "ecs-service-m0qag3" {
  name            = "ecs-service-m0qag3"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-m0qag3.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-m0qag3_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-m0qag3"
  }
}

resource "aws_ecs_task_definition" "ecs-service-m0qag3" {
  family                   = "ecs-service-m0qag3"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-m0qag3_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-m0qag3_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-m0qag3-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-m0qag3"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-m0qag3"
  }
}

resource "aws_ecs_service" "ecs-service-fzfa3w" {
  name            = "ecs-service-fzfa3w"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-fzfa3w.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-fzfa3w_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-fzfa3w"
  }
}

resource "aws_ecs_task_definition" "ecs-service-fzfa3w" {
  family                   = "ecs-service-fzfa3w"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-fzfa3w_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-fzfa3w_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-fzfa3w-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-fzfa3w"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-fzfa3w"
  }
}

resource "aws_ecs_service" "ecs-service-ph46sz" {
  name            = "ecs-service-ph46sz"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-ph46sz.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-ph46sz_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-ph46sz"
  }
}

resource "aws_ecs_task_definition" "ecs-service-ph46sz" {
  family                   = "ecs-service-ph46sz"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-ph46sz_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ph46sz_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ph46sz-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-ph46sz"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-ph46sz"
  }
}

resource "aws_ecs_service" "ecs-service-8w2rd8" {
  name            = "ecs-service-8w2rd8"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-8w2rd8.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-8w2rd8_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-8w2rd8"
  }
}

resource "aws_ecs_task_definition" "ecs-service-8w2rd8" {
  family                   = "ecs-service-8w2rd8"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-8w2rd8_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-8w2rd8_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-8w2rd8-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-8w2rd8"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-8w2rd8"
  }
}

resource "aws_ecs_service" "ecs-service-s9urik" {
  name            = "ecs-service-s9urik"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-s9urik.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-s9urik_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-s9urik"
  }
}

resource "aws_ecs_task_definition" "ecs-service-s9urik" {
  family                   = "ecs-service-s9urik"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-s9urik_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-s9urik_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-s9urik-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-s9urik"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-s9urik"
  }
}

resource "aws_ecs_service" "ecs-service-mx914n" {
  name            = "ecs-service-mx914n"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-mx914n.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-mx914n_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-mx914n"
  }
}

resource "aws_ecs_task_definition" "ecs-service-mx914n" {
  family                   = "ecs-service-mx914n"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-mx914n_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-mx914n_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-mx914n-app"
      image     = "nginx:latest"
      cpu       = 4096
      memory    = 8192
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
          "awslogs-group"         = "/ecs/ecs-service-mx914n"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-mx914n"
  }
}

resource "aws_ecs_service" "ecs-service-0anf0r" {
  name            = "ecs-service-0anf0r"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-0anf0r.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-0anf0r_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-0anf0r"
  }
}

resource "aws_ecs_task_definition" "ecs-service-0anf0r" {
  family                   = "ecs-service-0anf0r"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-0anf0r_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-0anf0r_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-0anf0r-app"
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
          "awslogs-group"         = "/ecs/ecs-service-0anf0r"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-0anf0r"
  }
}

resource "aws_ecs_service" "ecs-service-uruv7w" {
  name            = "ecs-service-uruv7w"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-uruv7w.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-uruv7w_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-uruv7w"
  }
}

resource "aws_ecs_task_definition" "ecs-service-uruv7w" {
  family                   = "ecs-service-uruv7w"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-uruv7w_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-uruv7w_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-uruv7w-app"
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
          "awslogs-group"         = "/ecs/ecs-service-uruv7w"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-uruv7w"
  }
}

