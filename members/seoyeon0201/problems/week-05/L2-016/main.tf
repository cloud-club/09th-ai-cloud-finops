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

resource "aws_ecs_service" "ecs-service-yjw1vb" {
  name            = "ecs-service-yjw1vb"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-yjw1vb.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-yjw1vb_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-yjw1vb"
  }
}

resource "aws_ecs_task_definition" "ecs-service-yjw1vb" {
  family                   = "ecs-service-yjw1vb"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-yjw1vb_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-yjw1vb_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-yjw1vb-app"
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
          "awslogs-group"         = "/ecs/ecs-service-yjw1vb"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-yjw1vb"
  }
}

resource "aws_ecs_service" "ecs-service-6jcwwl" {
  name            = "ecs-service-6jcwwl"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-6jcwwl.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-6jcwwl_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-6jcwwl"
  }
}

resource "aws_ecs_task_definition" "ecs-service-6jcwwl" {
  family                   = "ecs-service-6jcwwl"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-6jcwwl_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-6jcwwl_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-6jcwwl-app"
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
          "awslogs-group"         = "/ecs/ecs-service-6jcwwl"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-6jcwwl"
  }
}

resource "aws_ecs_service" "ecs-service-k0e2tk" {
  name            = "ecs-service-k0e2tk"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-k0e2tk.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-k0e2tk_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-k0e2tk"
  }
}

resource "aws_ecs_task_definition" "ecs-service-k0e2tk" {
  family                   = "ecs-service-k0e2tk"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-k0e2tk_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-k0e2tk_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-k0e2tk-app"
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
          "awslogs-group"         = "/ecs/ecs-service-k0e2tk"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-k0e2tk"
  }
}

resource "aws_ecs_service" "ecs-service-sgno52" {
  name            = "ecs-service-sgno52"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-sgno52.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-sgno52_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-sgno52"
  }
}

resource "aws_ecs_task_definition" "ecs-service-sgno52" {
  family                   = "ecs-service-sgno52"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-sgno52_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-sgno52_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-sgno52-app"
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
          "awslogs-group"         = "/ecs/ecs-service-sgno52"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-sgno52"
  }
}

resource "aws_ecs_service" "ecs-service-garno3" {
  name            = "ecs-service-garno3"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-garno3.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-garno3_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-garno3"
  }
}

resource "aws_ecs_task_definition" "ecs-service-garno3" {
  family                   = "ecs-service-garno3"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-garno3_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-garno3_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-garno3-app"
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
          "awslogs-group"         = "/ecs/ecs-service-garno3"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-garno3"
  }
}

resource "aws_ecs_service" "ecs-service-adchwn" {
  name            = "ecs-service-adchwn"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-adchwn.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-adchwn_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-adchwn"
  }
}

resource "aws_ecs_task_definition" "ecs-service-adchwn" {
  family                   = "ecs-service-adchwn"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-adchwn_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-adchwn_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-adchwn-app"
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
          "awslogs-group"         = "/ecs/ecs-service-adchwn"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-adchwn"
  }
}

resource "aws_ecs_service" "ecs-service-ky6me6" {
  name            = "ecs-service-ky6me6"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-ky6me6.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-ky6me6_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-ky6me6"
  }
}

resource "aws_ecs_task_definition" "ecs-service-ky6me6" {
  family                   = "ecs-service-ky6me6"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-ky6me6_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ky6me6_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ky6me6-app"
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
          "awslogs-group"         = "/ecs/ecs-service-ky6me6"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-ky6me6"
  }
}

resource "aws_ecs_service" "ecs-service-1h87vt" {
  name            = "ecs-service-1h87vt"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-1h87vt.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-1h87vt_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-1h87vt"
  }
}

resource "aws_ecs_task_definition" "ecs-service-1h87vt" {
  family                   = "ecs-service-1h87vt"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-1h87vt_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-1h87vt_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-1h87vt-app"
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
          "awslogs-group"         = "/ecs/ecs-service-1h87vt"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-1h87vt"
  }
}

resource "aws_ecs_service" "ecs-service-x5kwnz" {
  name            = "ecs-service-x5kwnz"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-x5kwnz.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-x5kwnz_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-x5kwnz"
  }
}

resource "aws_ecs_task_definition" "ecs-service-x5kwnz" {
  family                   = "ecs-service-x5kwnz"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-x5kwnz_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-x5kwnz_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-x5kwnz-app"
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
          "awslogs-group"         = "/ecs/ecs-service-x5kwnz"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-x5kwnz"
  }
}

resource "aws_ecs_service" "ecs-service-yldg9m" {
  name            = "ecs-service-yldg9m"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-yldg9m.arn
  desired_count   = 5
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-yldg9m_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-yldg9m"
  }
}

resource "aws_ecs_task_definition" "ecs-service-yldg9m" {
  family                   = "ecs-service-yldg9m"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = aws_iam_role.ecs-service-yldg9m_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-yldg9m_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-yldg9m-app"
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
          "awslogs-group"         = "/ecs/ecs-service-yldg9m"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-yldg9m"
  }
}

resource "aws_ecs_service" "ecs-service-bonra9" {
  name            = "ecs-service-bonra9"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-bonra9.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-bonra9_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-bonra9"
  }
}

resource "aws_ecs_task_definition" "ecs-service-bonra9" {
  family                   = "ecs-service-bonra9"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-bonra9_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-bonra9_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-bonra9-app"
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
          "awslogs-group"         = "/ecs/ecs-service-bonra9"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-bonra9"
  }
}

resource "aws_ecs_service" "ecs-service-1bft69" {
  name            = "ecs-service-1bft69"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.ecs-service-1bft69.arn
  desired_count   = 3
  launch_type     = "FARGATE"
  platform_version = "1.4.0"

  network_configuration {
    subnets          = var.private_subnet_ids
    security_groups  = [aws_security_group.ecs-service-1bft69_sg.id]
    assign_public_ip = false
  }

  tags = {
    Name = "ecs-service-1bft69"
  }
}

resource "aws_ecs_task_definition" "ecs-service-1bft69" {
  family                   = "ecs-service-1bft69"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = aws_iam_role.ecs-service-1bft69_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-1bft69_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-1bft69-app"
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
          "awslogs-group"         = "/ecs/ecs-service-1bft69"
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name = "ecs-service-1bft69"
  }
}

