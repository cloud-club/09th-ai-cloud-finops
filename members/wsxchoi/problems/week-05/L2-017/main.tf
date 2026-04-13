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

resource "aws_autoscaling_group" "autoscaling-group-y7qdt5" {
  name                = "autoscaling-group-y7qdt5"
  min_size            = 2
  max_size            = 20
  desired_capacity    = 2
  vpc_zone_identifier = var.private_subnet_ids

  launch_template {
    id      = aws_launch_template.autoscaling-group-y7qdt5.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "autoscaling-group-y7qdt5"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "autoscaling-group-y7qdt5" {
  name_prefix   = "autoscaling-group-y7qdt5-"
  image_id      = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "autoscaling-group-y7qdt5"
    }
  }
}

resource "aws_autoscaling_policy" "autoscaling-group-y7qdt5_target_tracking" {
  name                   = "autoscaling-group-y7qdt5-target-tracking"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group-y7qdt5.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 60
  }
}

resource "aws_autoscaling_group" "autoscaling-group-8e9fcb" {
  name                = "autoscaling-group-8e9fcb"
  min_size            = 2
  max_size            = 10
  desired_capacity    = 4
  vpc_zone_identifier = var.private_subnet_ids

  launch_template {
    id      = aws_launch_template.autoscaling-group-8e9fcb.id
    version = "$Latest"
  }

  default_instance_warmup = 300

  tag {
    key                 = "Name"
    value               = "autoscaling-group-8e9fcb"
    propagate_at_launch = true
  }
}

resource "aws_launch_template" "autoscaling-group-8e9fcb" {
  name_prefix   = "autoscaling-group-8e9fcb-"
  image_id      = "ami-0abcdef1234567890"
  instance_type = "m5.xlarge"

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "autoscaling-group-8e9fcb"
    }
  }
}

resource "aws_autoscaling_policy" "autoscaling-group-8e9fcb_target_tracking" {
  name                   = "autoscaling-group-8e9fcb-target-tracking"
  autoscaling_group_name = aws_autoscaling_group.autoscaling-group-8e9fcb.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 60
  }
}

