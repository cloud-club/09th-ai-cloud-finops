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

# 최적화: enhanced_fan_out true → false (EFO 비활성화)
# 근거: processing_interval=5분 배치 처리 → EFO 저지연 불필요
#       iterator_age=100ms 상수 → 백로그 없음, EFO 가치 없음
#       EFO 비용 $219/월 (샤드 시간) 절감
resource "aws_kinesis_stream" "kinesis-stream-th5ftu" {
  shard_count                 = 20
  retention_period_hours      = 24
  enhanced_fan_out            = false
  processing_interval_minutes = 5

  tags = {
    Name = "kinesis-stream-th5ftu"
  }
}

# 삭제: EFO 컨슈머 제거 → 표준 GetRecords 방식으로 전환
# 절감: 컨슈머 샤드 시간 + 데이터 검색 $109/월
# resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-zcd0bk" {
#   consumer_type        = "enhanced_fan_out"
#   data_read_gb_per_day = 250
#   tags = { Name = "kinesis-stream-consumer-zcd0bk" }
# }

# 삭제: EFO 컨슈머 제거 → 표준 GetRecords 방식으로 전환
# 절감: 컨슈머 샤드 시간 + 데이터 검색 $109/월
# resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-t865bp" {
#   consumer_type        = "enhanced_fan_out"
#   data_read_gb_per_day = 250
#   tags = { Name = "kinesis-stream-consumer-t865bp" }
# }

# 정상 (변경 없음): 이미 enhanced_fan_out=false
resource "aws_kinesis_stream" "kinesis-stream-b0395y" {
  shard_count                 = 5
  retention_period_hours      = 24
  enhanced_fan_out            = false
  processing_interval_minutes = 1

  tags = {
    Name = "kinesis-stream-b0395y"
  }
}