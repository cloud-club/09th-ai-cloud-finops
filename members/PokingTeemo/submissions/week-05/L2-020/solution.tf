resource "aws_kinesis_stream" "kinesis-stream-bazqzu" {
  shard_count = "10"
  stream_mode = "PROVISIONED"
  retention_hours = "24"
  Name = "kinesis-stream-bazqzu"
  tags = {
    Name = "kinesis-stream-bazqzu"
    Environment = "prod"
    Owner = "devops-team"
    Project = "game-analytics"
  }
}

resource "aws_kinesis_stream" "kinesis-stream-vfrrz5" {
  shard_count = "4"
  stream_mode = "ON_DEMAND"
  retention_hours = "24"
  Name = "kinesis-stream-vfrrz5"
  tags = {
    Name = "kinesis-stream-vfrrz5"
    Environment = "prod"
    Owner = "devops-team"
    Project = "game-events"
  }
}