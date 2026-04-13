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

resource "aws_ecs_service" "ecs-service-s5gjp0" {
  name            = "ecs-service-s5gjp0"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-s5gjp0.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-s5gjp0_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-s5gjp0"
  }
}

resource "aws_ecs_task_definition" "ecs-service-s5gjp0" {
  family                   = "ecs-service-s5gjp0"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-s5gjp0_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-s5gjp0_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-s5gjp0-app"
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
          "awslogs-group"         = "/ecs/ecs-service-s5gjp0"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-s5gjp0"
  }
}

resource "aws_ecs_service" "ecs-service-9ouqwx" {
  name            = "ecs-service-9ouqwx"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-9ouqwx.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-9ouqwx_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-9ouqwx"
  }
}

resource "aws_ecs_task_definition" "ecs-service-9ouqwx" {
  family                   = "ecs-service-9ouqwx"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-9ouqwx_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-9ouqwx_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-9ouqwx-app"
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
          "awslogs-group"         = "/ecs/ecs-service-9ouqwx"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-9ouqwx"
  }
}

resource "aws_ecs_service" "ecs-service-ed5q2q" {
  name            = "ecs-service-ed5q2q"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-ed5q2q.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-ed5q2q_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-ed5q2q"
  }
}

resource "aws_ecs_task_definition" "ecs-service-ed5q2q" {
  family                   = "ecs-service-ed5q2q"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-ed5q2q_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ed5q2q_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ed5q2q-app"
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
          "awslogs-group"         = "/ecs/ecs-service-ed5q2q"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-ed5q2q"
  }
}

resource "aws_ecs_service" "ecs-service-3aapfp" {
  name            = "ecs-service-3aapfp"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-3aapfp.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-3aapfp_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-3aapfp"
  }
}

resource "aws_ecs_task_definition" "ecs-service-3aapfp" {
  family                   = "ecs-service-3aapfp"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-3aapfp_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-3aapfp_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-3aapfp-app"
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
          "awslogs-group"         = "/ecs/ecs-service-3aapfp"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-3aapfp"
  }
}

resource "aws_ecs_service" "ecs-service-pvri9d" {
  name            = "ecs-service-pvri9d"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-pvri9d.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-pvri9d_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-pvri9d"
  }
}

resource "aws_ecs_task_definition" "ecs-service-pvri9d" {
  family                   = "ecs-service-pvri9d"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-pvri9d_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-pvri9d_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-pvri9d-app"
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
          "awslogs-group"         = "/ecs/ecs-service-pvri9d"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-pvri9d"
  }
}

resource "aws_ecs_service" "ecs-service-otgk50" {
  name            = "ecs-service-otgk50"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-otgk50.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-otgk50_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-otgk50"
  }
}

resource "aws_ecs_task_definition" "ecs-service-otgk50" {
  family                   = "ecs-service-otgk50"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-otgk50_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-otgk50_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-otgk50-app"
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
          "awslogs-group"         = "/ecs/ecs-service-otgk50"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-otgk50"
  }
}

resource "aws_ecs_service" "ecs-service-75ze4y" {
  name            = "ecs-service-75ze4y"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-75ze4y.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-75ze4y_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-75ze4y"
  }
}

resource "aws_ecs_task_definition" "ecs-service-75ze4y" {
  family                   = "ecs-service-75ze4y"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-75ze4y_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-75ze4y_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-75ze4y-app"
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
          "awslogs-group"         = "/ecs/ecs-service-75ze4y"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-75ze4y"
  }
}

resource "aws_ecs_service" "ecs-service-1nfzlk" {
  name            = "ecs-service-1nfzlk"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-1nfzlk.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-1nfzlk_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-1nfzlk"
  }
}

resource "aws_ecs_task_definition" "ecs-service-1nfzlk" {
  family                   = "ecs-service-1nfzlk"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-1nfzlk_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-1nfzlk_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-1nfzlk-app"
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
          "awslogs-group"         = "/ecs/ecs-service-1nfzlk"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-1nfzlk"
  }
}

resource "aws_ecs_service" "ecs-service-ukzxyg" {
  name            = "ecs-service-ukzxyg"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-ukzxyg.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-ukzxyg_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-ukzxyg"
  }
}

resource "aws_ecs_task_definition" "ecs-service-ukzxyg" {
  family                   = "ecs-service-ukzxyg"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-ukzxyg_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ukzxyg_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ukzxyg-app"
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
          "awslogs-group"         = "/ecs/ecs-service-ukzxyg"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-ukzxyg"
  }
}

resource "aws_ecs_service" "ecs-service-0mur64" {
  name            = "ecs-service-0mur64"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-0mur64.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-0mur64_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-0mur64"
  }
}

resource "aws_ecs_task_definition" "ecs-service-0mur64" {
  family                   = "ecs-service-0mur64"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-0mur64_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-0mur64_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-0mur64-app"
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
          "awslogs-group"         = "/ecs/ecs-service-0mur64"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-0mur64"
  }
}

resource "aws_ecs_service" "ecs-service-fv7ul7" {
  name            = "ecs-service-fv7ul7"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-fv7ul7.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-fv7ul7_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-fv7ul7"
  }
}

resource "aws_ecs_task_definition" "ecs-service-fv7ul7" {
  family                   = "ecs-service-fv7ul7"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-fv7ul7_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-fv7ul7_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-fv7ul7-app"
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
          "awslogs-group"         = "/ecs/ecs-service-fv7ul7"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-fv7ul7"
  }
}

resource "aws_ecs_service" "ecs-service-0xveyz" {
  name            = "ecs-service-0xveyz"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-0xveyz.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-0xveyz_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-0xveyz"
  }
}

resource "aws_ecs_task_definition" "ecs-service-0xveyz" {
  family                   = "ecs-service-0xveyz"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-0xveyz_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-0xveyz_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-0xveyz-app"
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
          "awslogs-group"         = "/ecs/ecs-service-0xveyz"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-0xveyz"
  }
}

