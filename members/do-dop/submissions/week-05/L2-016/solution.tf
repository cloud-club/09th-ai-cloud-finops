// Optimized variant of main.tf for L2-016.
// Overprovisioned ECS Fargate task definitions were downsized from 4vCPU/8GB to 1vCPU/2GB.

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

resource "aws_ecs_service" "ecs-service-my177r" {
  name            = "ecs-service-my177r"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-my177r.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-my177r_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-my177r"
  }
}

resource "aws_ecs_task_definition" "ecs-service-my177r" {
  family                   = "ecs-service-my177r"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-my177r_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-my177r_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-my177r-app"
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
          "awslogs-group"         = "/ecs/ecs-service-my177r"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-my177r"
  }
}

resource "aws_ecs_service" "ecs-service-zd8chq" {
  name            = "ecs-service-zd8chq"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-zd8chq.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-zd8chq_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-zd8chq"
  }
}

resource "aws_ecs_task_definition" "ecs-service-zd8chq" {
  family                   = "ecs-service-zd8chq"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-zd8chq_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-zd8chq_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-zd8chq-app"
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
          "awslogs-group"         = "/ecs/ecs-service-zd8chq"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-zd8chq"
  }
}

resource "aws_ecs_service" "ecs-service-wxp30d" {
  name            = "ecs-service-wxp30d"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-wxp30d.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-wxp30d_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-wxp30d"
  }
}

resource "aws_ecs_task_definition" "ecs-service-wxp30d" {
  family                   = "ecs-service-wxp30d"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-wxp30d_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-wxp30d_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-wxp30d-app"
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
          "awslogs-group"         = "/ecs/ecs-service-wxp30d"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-wxp30d"
  }
}

resource "aws_ecs_service" "ecs-service-mxq3yf" {
  name            = "ecs-service-mxq3yf"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-mxq3yf.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-mxq3yf_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-mxq3yf"
  }
}

resource "aws_ecs_task_definition" "ecs-service-mxq3yf" {
  family                   = "ecs-service-mxq3yf"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-mxq3yf_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-mxq3yf_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-mxq3yf-app"
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
          "awslogs-group"         = "/ecs/ecs-service-mxq3yf"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-mxq3yf"
  }
}

resource "aws_ecs_service" "ecs-service-o4mnhz" {
  name            = "ecs-service-o4mnhz"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-o4mnhz.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-o4mnhz_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-o4mnhz"
  }
}

resource "aws_ecs_task_definition" "ecs-service-o4mnhz" {
  family                   = "ecs-service-o4mnhz"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-o4mnhz_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-o4mnhz_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-o4mnhz-app"
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
          "awslogs-group"         = "/ecs/ecs-service-o4mnhz"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-o4mnhz"
  }
}

resource "aws_ecs_service" "ecs-service-w5dknp" {
  name            = "ecs-service-w5dknp"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-w5dknp.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-w5dknp_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-w5dknp"
  }
}

resource "aws_ecs_task_definition" "ecs-service-w5dknp" {
  family                   = "ecs-service-w5dknp"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-w5dknp_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-w5dknp_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-w5dknp-app"
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
          "awslogs-group"         = "/ecs/ecs-service-w5dknp"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-w5dknp"
  }
}

resource "aws_ecs_service" "ecs-service-pz29c9" {
  name            = "ecs-service-pz29c9"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-pz29c9.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-pz29c9_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-pz29c9"
  }
}

resource "aws_ecs_task_definition" "ecs-service-pz29c9" {
  family                   = "ecs-service-pz29c9"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-pz29c9_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-pz29c9_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-pz29c9-app"
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
          "awslogs-group"         = "/ecs/ecs-service-pz29c9"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-pz29c9"
  }
}

resource "aws_ecs_service" "ecs-service-xz3bmh" {
  name            = "ecs-service-xz3bmh"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-xz3bmh.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-xz3bmh_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-xz3bmh"
  }
}

resource "aws_ecs_task_definition" "ecs-service-xz3bmh" {
  family                   = "ecs-service-xz3bmh"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-xz3bmh_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-xz3bmh_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-xz3bmh-app"
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
          "awslogs-group"         = "/ecs/ecs-service-xz3bmh"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-xz3bmh"
  }
}

resource "aws_ecs_service" "ecs-service-02pldg" {
  name            = "ecs-service-02pldg"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-02pldg.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-02pldg_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-02pldg"
  }
}

resource "aws_ecs_task_definition" "ecs-service-02pldg" {
  family                   = "ecs-service-02pldg"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-02pldg_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-02pldg_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-02pldg-app"
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
          "awslogs-group"         = "/ecs/ecs-service-02pldg"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-02pldg"
  }
}

resource "aws_ecs_service" "ecs-service-e6f1fx" {
  name            = "ecs-service-e6f1fx"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-e6f1fx.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-e6f1fx_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-e6f1fx"
  }
}

resource "aws_ecs_task_definition" "ecs-service-e6f1fx" {
  family                   = "ecs-service-e6f1fx"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-e6f1fx_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-e6f1fx_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-e6f1fx-app"
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
          "awslogs-group"         = "/ecs/ecs-service-e6f1fx"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-e6f1fx"
  }
}

resource "aws_ecs_service" "ecs-service-namimj" {
  name            = "ecs-service-namimj"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-namimj.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-namimj_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-namimj"
  }
}

resource "aws_ecs_task_definition" "ecs-service-namimj" {
  family                   = "ecs-service-namimj"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-namimj_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-namimj_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-namimj-app"
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
          "awslogs-group"         = "/ecs/ecs-service-namimj"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-namimj"
  }
}

resource "aws_ecs_service" "ecs-service-htzu7b" {
  name            = "ecs-service-htzu7b"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-htzu7b.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-htzu7b_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-htzu7b"
  }
}

resource "aws_ecs_task_definition" "ecs-service-htzu7b" {
  family                   = "ecs-service-htzu7b"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-htzu7b_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-htzu7b_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-htzu7b-app"
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
          "awslogs-group"         = "/ecs/ecs-service-htzu7b"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-htzu7b"
  }
}