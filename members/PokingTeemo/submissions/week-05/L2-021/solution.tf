# [REMOVED] aws_cloudwatch_metric_alarm: 250개 중 247개 삭제 — 1초 해상도를 60초로 최적화
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-6c50ex" {
  resolution_seconds = "60"
  namespace = "Custom/Application"
  metric_type = "standard"
  evaluation_period_minutes = "5"
  actual_required_resolution_seconds = "60"
  Name = "cloudwatch-metric-alarm-6c50ex"
  tags = {
    Name = "cloudwatch-metric-alarm-6c50ex"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-yoo4wc" {
  resolution_seconds = "60"
  namespace = "Custom/Application"
  metric_type = "standard"
  evaluation_period_minutes = "5"
  actual_required_resolution_seconds = "60"
  Name = "cloudwatch-metric-alarm-yoo4wc"
  tags = {
    Name = "cloudwatch-metric-alarm-yoo4wc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-1g77ki" {
  resolution_seconds = "60"
  namespace = "Custom/Application"
  metric_type = "standard"
  evaluation_period_minutes = "5"
  actual_required_resolution_seconds = "60"
  Name = "cloudwatch-metric-alarm-1g77ki"
  tags = {
    Name = "cloudwatch-metric-alarm-1g77ki"
  }
}