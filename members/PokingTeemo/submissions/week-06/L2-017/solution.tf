resource "aws_autoscaling_group" "autoscaling-group-h128pu" {
  name = "autoscaling-group-h128pu"
  min_size = "2"
  max_size = "20"
  desired_capacity = "2"
  vpc_zone_identifier = "var.private_subnet_ids"
  default_instance_warmup = 300
  id = "aws_launch_template.autoscaling-group-h128pu.id"
  version = "$Latest"
  key = "Name"
  value = "autoscaling-group-h128pu"
  propagate_at_launch = "true"
}
resource "aws_autoscaling_group" "autoscaling-group-d89t0e" {
  name = "autoscaling-group-d89t0e"
  min_size = "2"
  max_size = "10"
  desired_capacity = "4"
  vpc_zone_identifier = "var.private_subnet_ids"
  id = "aws_launch_template.autoscaling-group-d89t0e.id"
  version = "$Latest"
  default_instance_warmup = "300"
  key = "Name"
  value = "autoscaling-group-d89t0e"
  propagate_at_launch = "true"
}
resource "aws_launch_template" "autoscaling-group-h128pu" {
  name_prefix = "autoscaling-group-h128pu-"
  image_id = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  resource_type = "instance"
  Name = "autoscaling-group-h128pu"
  tags = {
    Name = "autoscaling-group-h128pu"
    Environment = "production"
    Owner = "devops-team"
    Project = "gamenova-backend"
  }
}
resource "aws_launch_template" "autoscaling-group-d89t0e" {
  name_prefix = "autoscaling-group-d89t0e-"
  image_id = "ami-0abcdef1234567890"
  instance_type = "m5.large"
  resource_type = "instance"
  Name = "autoscaling-group-d89t0e"
  tags = {
    Name = "autoscaling-group-d89t0e"
    Environment = "development"
    Owner = "devops-team"
    Project = "gamenova-backend"
  }
}
resource "aws_autoscaling_policy" "autoscaling-group-h128pu_target_tracking" {
  name = "autoscaling-group-h128pu-target-tracking"
  autoscaling_group_name = "aws_autoscaling_group.autoscaling-group-h128pu.name"
  policy_type = "TargetTrackingScaling"
  predefined_metric_type = "ASGAverageCPUUtilization"
  target_value = "60"
}
resource "aws_autoscaling_policy" "autoscaling-group-d89t0e_target_tracking" {
  name = "autoscaling-group-d89t0e-target-tracking"
  autoscaling_group_name = "aws_autoscaling_group.autoscaling-group-d89t0e.name"
  policy_type = "TargetTrackingScaling"
  predefined_metric_type = "ASGAverageCPUUtilization"
  target_value = "60"
}