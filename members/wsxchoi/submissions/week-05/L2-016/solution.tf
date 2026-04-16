# 리소스: ecs-service-0mur64
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-0mur64" {
  family                   = "ecs-service-0mur64"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-0mur64_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-0mur64_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-0mur64-app"
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
# 리소스: ecs-service-1nfzlk
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-1nfzlk" {
  family                   = "ecs-service-1nfzlk"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-1nfzlk_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-1nfzlk_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-1nfzlk-app"
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

# 리소스: ecs-service-3aapfp
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-3aapfp" {
  family                   = "ecs-service-3aapfp"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-3aapfp_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-3aapfp_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-3aapfp-app"
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

# 리소스: ecs-service-9ouqwx
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-9ouqwx" {
  family                   = "ecs-service-9ouqwx"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-9ouqwx_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-9ouqwx_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-9ouqwx-app"
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

# 리소스: ecs-service-75ze4y
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%
# 주의: max Memory 48.63% → 리사이즈 후 실효 97.3%. 보수적 접근 시 memory 5120 고려.

resource "aws_ecs_task_definition" "ecs-service-75ze4y" {
  family                   = "ecs-service-75ze4y"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-75ze4y_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-75ze4y_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-75ze4y-app"
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


# 리소스: ecs-service-ed5q2q
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-ed5q2q" {
  family                   = "ecs-service-ed5q2q"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-ed5q2q_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ed5q2q_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ed5q2q-app"
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


# 리소스: ecs-service-otgk50
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 5120
# 예상 절감: 47.5%
# 주의: max Memory 51.85%(실제 4248 MB)로 4096 MB 초과하므로 5120 MB로 설정.

resource "aws_ecs_task_definition" "ecs-service-otgk50" {
  family                   = "ecs-service-otgk50"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "5120"
  execution_role_arn       = aws_iam_role.ecs-service-otgk50_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-otgk50_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-otgk50-app"
      image     = "nginx:latest"
      cpu       = 2048
      memory    = 5120
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


# 리소스: ecs-service-pvri9d
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-pvri9d" {
  family                   = "ecs-service-pvri9d"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-pvri9d_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-pvri9d_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-pvri9d-app"
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

# 리소스: ecs-service-s5gjp0
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%
# 주의: max Memory 49.89% → 리사이즈 후 실효 99.8%. 보수적 접근 시 memory 5120 고려.

resource "aws_ecs_task_definition" "ecs-service-s5gjp0" {
  family                   = "ecs-service-s5gjp0"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-s5gjp0_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-s5gjp0_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-s5gjp0-app"
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

# 리소스: ecs-service-ukzxyg
# 패턴: ecs-fargate-oversized
# 생성일: 2026-04-16
#
# 현재 → 권장
# CPU: 4096 → 2048
# Memory: 8192 → 4096
# 예상 절감: 50.0%

resource "aws_ecs_task_definition" "ecs-service-ukzxyg" {
  family                   = "ecs-service-ukzxyg"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = aws_iam_role.ecs-service-ukzxyg_execution_role.arn
  task_role_arn            = aws_iam_role.ecs-service-ukzxyg_task_role.arn

  container_definitions = jsonencode([
    {
      name      = "ecs-service-ukzxyg-app"
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