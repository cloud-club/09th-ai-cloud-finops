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

resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rd74ls" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rd74ls"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rd74ls"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5mbtw5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5mbtw5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5mbtw5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-k7suv1" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-k7suv1"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-k7suv1"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2w1rdv" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2w1rdv"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2w1rdv"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-y1dv6w" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-y1dv6w"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-y1dv6w"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-pz2d8y" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-pz2d8y"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-pz2d8y"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-e3d575" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-e3d575"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-e3d575"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3i000a" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3i000a"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3i000a"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-lhxfyh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-lhxfyh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-lhxfyh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-onh52i" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-onh52i"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-onh52i"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-fz7qoa" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-fz7qoa"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-fz7qoa"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-11ksj0" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-11ksj0"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-11ksj0"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-m46yk7" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-m46yk7"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-m46yk7"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-bqratv" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-bqratv"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-bqratv"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-oj52ww" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-oj52ww"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-oj52ww"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5ux0h8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5ux0h8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5ux0h8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-h1gfzc" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-h1gfzc"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-h1gfzc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-172ykh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-172ykh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-172ykh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3dco82" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3dco82"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3dco82"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-4i0iwb" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-4i0iwb"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-4i0iwb"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-iqodhs" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-iqodhs"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-iqodhs"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-7xqkmq" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-7xqkmq"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-7xqkmq"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-vydkdq" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-vydkdq"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-vydkdq"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-njpdj9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-njpdj9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-njpdj9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9a3z0q" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9a3z0q"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9a3z0q"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-arn8o2" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-arn8o2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-arn8o2"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-gnydcc" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-gnydcc"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-gnydcc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-bhbggh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-bhbggh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-bhbggh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-6z165q" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-6z165q"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-6z165q"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-gs3gvh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-gs3gvh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-gs3gvh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ndudrq" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ndudrq"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ndudrq"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5h1g5s" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5h1g5s"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5h1g5s"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-90xx65" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-90xx65"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-90xx65"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-e77fgg" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-e77fgg"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-e77fgg"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-fuvb37" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-fuvb37"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-fuvb37"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-k6xjmk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-k6xjmk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-k6xjmk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-yettne" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-yettne"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-yettne"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-261sz8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-261sz8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-261sz8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-884a84" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-884a84"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-884a84"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8mjtwl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8mjtwl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8mjtwl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-imil0q" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-imil0q"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-imil0q"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-mf359r" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-mf359r"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-mf359r"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-npfyly" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-npfyly"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-npfyly"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-pmwzgt" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-pmwzgt"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-pmwzgt"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8jaooo" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8jaooo"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8jaooo"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xumnlg" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xumnlg"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xumnlg"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-l4qi5d" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-l4qi5d"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-l4qi5d"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-l8cl0s" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-l8cl0s"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-l8cl0s"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9i5yti" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9i5yti"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9i5yti"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-zur9z9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-zur9z9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-zur9z9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2o2i6a" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2o2i6a"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2o2i6a"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-p7nn9j" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-p7nn9j"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-p7nn9j"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-p1wljh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-p1wljh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-p1wljh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-x4x8xy" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-x4x8xy"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-x4x8xy"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-tt4lfi" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-tt4lfi"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-tt4lfi"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ishzfn" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ishzfn"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ishzfn"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-i76zzd" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-i76zzd"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-i76zzd"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-94us81" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-94us81"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-94us81"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-urdyqj" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-urdyqj"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-urdyqj"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rboo10" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rboo10"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rboo10"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ariqps" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ariqps"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ariqps"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-jy9qxy" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-jy9qxy"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-jy9qxy"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-oqpzai" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-oqpzai"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-oqpzai"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-jk6den" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-jk6den"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-jk6den"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-b6qo7t" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-b6qo7t"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-b6qo7t"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-vgwrpp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-vgwrpp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-vgwrpp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-6ymsso" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-6ymsso"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-6ymsso"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ecpi8h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ecpi8h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ecpi8h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8cde2l" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8cde2l"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8cde2l"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8yh3fd" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8yh3fd"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8yh3fd"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-7wvios" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-7wvios"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-7wvios"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-kg30od" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-kg30od"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-kg30od"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-oi6khn" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-oi6khn"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-oi6khn"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-c2zkrj" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-c2zkrj"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-c2zkrj"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-hi57i8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-hi57i8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-hi57i8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-mtl3su" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-mtl3su"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-mtl3su"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-x4639l" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-x4639l"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-x4639l"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-c8rn02" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-c8rn02"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-c8rn02"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-kb5bye" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-kb5bye"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-kb5bye"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-oucmhh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-oucmhh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-oucmhh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-o9uajy" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-o9uajy"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-o9uajy"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ukmus1" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ukmus1"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ukmus1"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-acrhjc" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-acrhjc"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-acrhjc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9n8y8p" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9n8y8p"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9n8y8p"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-58tc37" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-58tc37"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-58tc37"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-hz6o35" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-hz6o35"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-hz6o35"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-swfwd5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-swfwd5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-swfwd5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3en29o" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3en29o"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3en29o"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ftnqcn" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ftnqcn"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ftnqcn"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3lj5em" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3lj5em"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3lj5em"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2yrraa" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2yrraa"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2yrraa"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2v5xhw" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2v5xhw"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2v5xhw"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-nwukdj" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-nwukdj"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-nwukdj"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-4q6gwp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-4q6gwp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-4q6gwp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ylpfiq" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ylpfiq"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ylpfiq"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-cxg6zg" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-cxg6zg"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-cxg6zg"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-r92tsw" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-r92tsw"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-r92tsw"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ooeq63" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ooeq63"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ooeq63"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ubyoe5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ubyoe5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ubyoe5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-d89wbi" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-d89wbi"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-d89wbi"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5cp72c" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5cp72c"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5cp72c"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-7fh92j" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-7fh92j"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-7fh92j"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-fqtwwv" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-fqtwwv"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-fqtwwv"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ikm6v8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ikm6v8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ikm6v8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-bsoev4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-bsoev4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-bsoev4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-47tdki" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-47tdki"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-47tdki"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-aov81y" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-aov81y"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-aov81y"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-kyp62k" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-kyp62k"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-kyp62k"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-87va0r" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-87va0r"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-87va0r"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-y0qrs5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-y0qrs5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-y0qrs5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-gyzrup" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-gyzrup"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-gyzrup"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-nmwclw" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-nmwclw"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-nmwclw"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rakzpc" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rakzpc"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rakzpc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-24ftv2" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-24ftv2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-24ftv2"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-zn6h2h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-zn6h2h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-zn6h2h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xiil5h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xiil5h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xiil5h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-f0y1a9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-f0y1a9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-f0y1a9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-oc1xav" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-oc1xav"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-oc1xav"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-mxnq42" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-mxnq42"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-mxnq42"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-pxoaij" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-pxoaij"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-pxoaij"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-uk2oyi" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-uk2oyi"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-uk2oyi"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5vngf4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5vngf4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5vngf4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-zppqon" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-zppqon"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-zppqon"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-qew4n9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-qew4n9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-qew4n9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-0ezcfc" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-0ezcfc"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-0ezcfc"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-w1p5t2" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-w1p5t2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-w1p5t2"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-4n6059" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-4n6059"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-4n6059"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-tb5svr" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-tb5svr"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-tb5svr"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xqzrfk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xqzrfk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xqzrfk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-kjtni4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-kjtni4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-kjtni4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xsv10u" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xsv10u"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xsv10u"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-qisw7x" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-qisw7x"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-qisw7x"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9v85h9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9v85h9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9v85h9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-lekx8k" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-lekx8k"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-lekx8k"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-51cjqj" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-51cjqj"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-51cjqj"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-r6gmqm" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-r6gmqm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-r6gmqm"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rshd3d" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rshd3d"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rshd3d"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-def46f" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-def46f"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-def46f"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-nyb28e" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-nyb28e"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-nyb28e"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xf03cg" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xf03cg"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xf03cg"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ykbymk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ykbymk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ykbymk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-njshso" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-njshso"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-njshso"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ryw6gl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ryw6gl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ryw6gl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-dqu6a4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-dqu6a4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-dqu6a4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9rvk37" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9rvk37"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9rvk37"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3wpme0" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3wpme0"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3wpme0"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3epd8m" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3epd8m"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3epd8m"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8ino6h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8ino6h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8ino6h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-qjzp7o" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-qjzp7o"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-qjzp7o"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-odisxe" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-odisxe"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-odisxe"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-h28phm" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-h28phm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-h28phm"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9su354" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9su354"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9su354"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-19d0hi" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-19d0hi"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-19d0hi"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-1547il" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-1547il"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-1547il"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rrgu5w" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rrgu5w"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rrgu5w"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-10f8cx" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-10f8cx"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-10f8cx"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-vjoyc4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-vjoyc4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-vjoyc4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8edw20" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8edw20"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8edw20"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-lzmlik" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-lzmlik"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-lzmlik"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-cyfjwl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-cyfjwl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-cyfjwl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-xra0wf" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-xra0wf"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-xra0wf"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2jyrk4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2jyrk4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2jyrk4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-h8ynys" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-h8ynys"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-h8ynys"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-tldykl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-tldykl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-tldykl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5vj5ii" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5vj5ii"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5vj5ii"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-1cpsz1" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-1cpsz1"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-1cpsz1"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-89uruf" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-89uruf"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-89uruf"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-07kdhr" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-07kdhr"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-07kdhr"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-05jpla" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-05jpla"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-05jpla"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-4rnd2h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-4rnd2h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-4rnd2h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-abnra9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-abnra9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-abnra9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-fyi2at" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-fyi2at"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-fyi2at"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-bsh7ys" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-bsh7ys"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-bsh7ys"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-wks42f" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-wks42f"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-wks42f"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-tkde77" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-tkde77"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-tkde77"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-64slp8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-64slp8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-64slp8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-pcg7fr" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-pcg7fr"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-pcg7fr"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-qchz6o" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-qchz6o"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-qchz6o"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-21exhe" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-21exhe"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-21exhe"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8gtjjd" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8gtjjd"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8gtjjd"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-l1y6uf" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-l1y6uf"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-l1y6uf"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-o39uht" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-o39uht"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-o39uht"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-vnhvnp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-vnhvnp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-vnhvnp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-0q78df" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-0q78df"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-0q78df"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-v3ao7n" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-v3ao7n"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-v3ao7n"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-wiavcb" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-wiavcb"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-wiavcb"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-j4fty8" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-j4fty8"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-j4fty8"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-6djlf9" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-6djlf9"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-6djlf9"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ckhwhn" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ckhwhn"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ckhwhn"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-4gikve" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-4gikve"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-4gikve"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-fhndv2" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-fhndv2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-fhndv2"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-lu6q1r" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-lu6q1r"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-lu6q1r"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-k06o0p" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-k06o0p"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-k06o0p"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-6231jl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-6231jl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-6231jl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-69c4rp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-69c4rp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-69c4rp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-d2p6to" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-d2p6to"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-d2p6to"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-f4c4ed" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-f4c4ed"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-f4c4ed"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-1qe1tp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-1qe1tp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-1qe1tp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-n983le" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-n983le"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-n983le"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-vhm5dz" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-vhm5dz"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-vhm5dz"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-tyys0b" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-tyys0b"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-tyys0b"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-kwt4nk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-kwt4nk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-kwt4nk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-k3nc62" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-k3nc62"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-k3nc62"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-lqti14" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-lqti14"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-lqti14"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9srilk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9srilk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9srilk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-w957zq" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-w957zq"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-w957zq"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-rlfm62" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-rlfm62"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-rlfm62"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-pw5xag" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-pw5xag"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-pw5xag"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-sra63h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-sra63h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-sra63h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-80mxen" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-80mxen"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-80mxen"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-wybxt4" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-wybxt4"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-wybxt4"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-8fs5qh" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-8fs5qh"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-8fs5qh"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-mzr6up" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-mzr6up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-mzr6up"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ac7h9p" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ac7h9p"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ac7h9p"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-a78dye" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-a78dye"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-a78dye"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-533e4u" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-533e4u"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-533e4u"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-npzg8u" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-npzg8u"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-npzg8u"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-u1u5pz" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-u1u5pz"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-u1u5pz"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-hvnmsl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-hvnmsl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-hvnmsl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-2nevh5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-2nevh5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-2nevh5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-hvwkj5" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-hvwkj5"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-hvwkj5"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-1gttph" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-1gttph"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-1gttph"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-5hrsfa" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-5hrsfa"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-5hrsfa"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-gy1z2h" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-gy1z2h"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-gy1z2h"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-uobe85" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-uobe85"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-uobe85"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-412h68" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-412h68"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-412h68"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-h3hg4t" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-h3hg4t"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-h3hg4t"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-um3zp3" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-um3zp3"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-um3zp3"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-n114ht" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-n114ht"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-n114ht"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-c9qwmy" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-c9qwmy"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-c9qwmy"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-nqkekb" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-nqkekb"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-nqkekb"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-hvw63v" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-hvw63v"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-hvw63v"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-d3o3nr" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-d3o3nr"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-d3o3nr"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-f5vbo6" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-f5vbo6"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-f5vbo6"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-bdmbul" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-bdmbul"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-bdmbul"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-yona91" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-yona91"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-yona91"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-r775ku" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-r775ku"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-r775ku"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-imtddl" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-imtddl"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-imtddl"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-05m07u" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-05m07u"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-05m07u"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-w7eolz" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-w7eolz"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-w7eolz"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-p2eqdk" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-p2eqdk"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-p2eqdk"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-cadzdp" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-cadzdp"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-cadzdp"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-wwamz6" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-wwamz6"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-wwamz6"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-esdyrx" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-esdyrx"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-esdyrx"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-7n6sha" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-7n6sha"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-7n6sha"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-280ach" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-280ach"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-280ach"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-9orrie" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-9orrie"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-9orrie"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-0u8v7i" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-0u8v7i"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-0u8v7i"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-3vysli" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-3vysli"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-3vysli"
  }
}
resource "aws_cloudwatch_metric_alarm" "cloudwatch-metric-alarm-ymbp1v" {
  # Downgraded: period 1s (high-res $0.90/mo) -> 60s (standard $0.30/mo). Saves $0.60/metric/month.
  alarm_name          = "cloudwatch-metric-alarm-ymbp1v"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 5
  metric_name         = "ApplicationMetric"
  namespace           = "Custom/Application"
  period              = 60
  statistic           = "Average"
  threshold           = 0

  tags = {
    Name = "cloudwatch-metric-alarm-ymbp1v"
  }
}