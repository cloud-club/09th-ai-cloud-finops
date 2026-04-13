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

resource "aws_autoscaling_group" "autoscaling-group-ultten" {
  name                = "autoscaling-group-ultten"
  min_size            = 2
  max_size            = 20
  desired_capacity    = 2
  vpc_zone_identifier = var.private_subnet_ids

  launch_template {
    id      = aws_launch_template.autoscaling-group-ultten.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "autoscaling-group-ultten"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "autoscaling-group-ultten" {
  name_prefix   = "autoscaling-group-ultten-"
  image_id      = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "autoscaling-group-ultten"
    }
  }
}

resource "aws_autoscaling_policy" "autoscaling-group-ultten_target_tracking" {
  name                   = "autoscaling-group-ultten-target-tracking"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group-ultten.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 60
  }
}

resource "aws_autoscaling_group" "autoscaling-group-1swrhf" {
  name                = "autoscaling-group-1swrhf"
  min_size            = 2
  max_size            = 10
  desired_capacity    = 4
  vpc_zone_identifier = var.private_subnet_ids

  launch_template {
    id      = aws_launch_template.autoscaling-group-1swrhf.id
    version = "$Latest"
  }

  default_instance_warmup = 300

  tag {
    key                 = "Name"
    value               = "autoscaling-group-1swrhf"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "autoscaling-group-1swrhf" {
  name_prefix   = "autoscaling-group-1swrhf-"
  image_id      = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "autoscaling-group-1swrhf"
    }
  }
}

resource "aws_autoscaling_policy" "autoscaling-group-1swrhf_target_tracking" {
  name                   = "autoscaling-group-1swrhf-target-tracking"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group-1swrhf.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 60
  }
}

