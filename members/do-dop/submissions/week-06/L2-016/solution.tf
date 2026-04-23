// Optimized variant of main.tf for Week6/L2-016.
// Conservative phase-1 rightsizing:
// - Reduce the 10 overprovisioned ECS Fargate services from 4vCPU/8GB to 2vCPU/4GB.
// - Keep already right-sized 1vCPU/2GB services unchanged.

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

resource "aws_ecs_service" "ecs-service-f6sqin" {
  name            = "ecs-service-f6sqin"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-f6sqin.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-f6sqin_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-f6sqin"
  }
}

resource "aws_ecs_task_definition" "ecs-service-f6sqin" {
  family                   = "ecs-service-f6sqin"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-f6sqin_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-f6sqin_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-f6sqin-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-f6sqin"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-f6sqin"
  }
}

resource "aws_ecs_service" "ecs-service-b2g5v8" {
  name            = "ecs-service-b2g5v8"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-b2g5v8.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-b2g5v8_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-b2g5v8"
  }
}

resource "aws_ecs_task_definition" "ecs-service-b2g5v8" {
  family                   = "ecs-service-b2g5v8"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-b2g5v8_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-b2g5v8_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-b2g5v8-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-b2g5v8"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-b2g5v8"
  }
}

resource "aws_ecs_service" "ecs-service-wqxm6v" {
  name            = "ecs-service-wqxm6v"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-wqxm6v.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-wqxm6v_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-wqxm6v"
  }
}

resource "aws_ecs_task_definition" "ecs-service-wqxm6v" {
  family                   = "ecs-service-wqxm6v"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-wqxm6v_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-wqxm6v_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-wqxm6v-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-wqxm6v"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-wqxm6v"
  }
}

resource "aws_ecs_service" "ecs-service-drifyr" {
  name            = "ecs-service-drifyr"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-drifyr.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-drifyr_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-drifyr"
  }
}

resource "aws_ecs_task_definition" "ecs-service-drifyr" {
  family                   = "ecs-service-drifyr"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-drifyr_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-drifyr_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-drifyr-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-drifyr"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-drifyr"
  }
}

resource "aws_ecs_service" "ecs-service-i18plz" {
  name            = "ecs-service-i18plz"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-i18plz.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-i18plz_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-i18plz"
  }
}

resource "aws_ecs_task_definition" "ecs-service-i18plz" {
  family                   = "ecs-service-i18plz"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-i18plz_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-i18plz_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-i18plz-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-i18plz"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-i18plz"
  }
}

resource "aws_ecs_service" "ecs-service-rt54wc" {
  name            = "ecs-service-rt54wc"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-rt54wc.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-rt54wc_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-rt54wc"
  }
}

resource "aws_ecs_task_definition" "ecs-service-rt54wc" {
  family                   = "ecs-service-rt54wc"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-rt54wc_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-rt54wc_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-rt54wc-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-rt54wc"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-rt54wc"
  }
}

resource "aws_ecs_service" "ecs-service-d3o1rh" {
  name            = "ecs-service-d3o1rh"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-d3o1rh.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-d3o1rh_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-d3o1rh"
  }
}

resource "aws_ecs_task_definition" "ecs-service-d3o1rh" {
  family                   = "ecs-service-d3o1rh"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-d3o1rh_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-d3o1rh_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-d3o1rh-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-d3o1rh"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-d3o1rh"
  }
}

resource "aws_ecs_service" "ecs-service-xzqlb1" {
  name            = "ecs-service-xzqlb1"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-xzqlb1.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-xzqlb1_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-xzqlb1"
  }
}

resource "aws_ecs_task_definition" "ecs-service-xzqlb1" {
  family                   = "ecs-service-xzqlb1"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-xzqlb1_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-xzqlb1_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-xzqlb1-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-xzqlb1"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-xzqlb1"
  }
}

resource "aws_ecs_service" "ecs-service-2b28nb" {
  name            = "ecs-service-2b28nb"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-2b28nb.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-2b28nb_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-2b28nb"
  }
}

resource "aws_ecs_task_definition" "ecs-service-2b28nb" {
  family                   = "ecs-service-2b28nb"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-2b28nb_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-2b28nb_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-2b28nb-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-2b28nb"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-2b28nb"
  }
}

resource "aws_ecs_service" "ecs-service-hpsxd6" {
  name            = "ecs-service-hpsxd6"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-hpsxd6.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-hpsxd6_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-hpsxd6"
  }
}

resource "aws_ecs_task_definition" "ecs-service-hpsxd6" {
  family                   = "ecs-service-hpsxd6"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-hpsxd6_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-hpsxd6_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-hpsxd6-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 4096
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
          "awslogs-group"         = "/ecs/ecs-service-hpsxd6"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-hpsxd6"
  }
}

resource "aws_ecs_service" "ecs-service-rdk7gr" {
  name            = "ecs-service-rdk7gr"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-rdk7gr.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-rdk7gr_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-rdk7gr"
  }
}

resource "aws_ecs_task_definition" "ecs-service-rdk7gr" {
  family                   = "ecs-service-rdk7gr"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-rdk7gr_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-rdk7gr_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-rdk7gr-app"
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
          "awslogs-group"         = "/ecs/ecs-service-rdk7gr"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-rdk7gr"
  }
}

resource "aws_ecs_service" "ecs-service-17dm51" {
  name            = "ecs-service-17dm51"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-17dm51.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-17dm51_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-17dm51"
  }
}

resource "aws_ecs_task_definition" "ecs-service-17dm51" {
  family                   = "ecs-service-17dm51"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-17dm51_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-17dm51_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-17dm51-app"
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
          "awslogs-group"         = "/ecs/ecs-service-17dm51"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-17dm51"
  }
}