# [REMOVED] aws_ebs_snapshot: 200개 고아 스냅샷 삭제됨 - SourceVolumeStatus=deleted인 불필요 리소스 제거

# 유효한 스냅샷만 유지 (SourceVolumeStatus=exists)
resource "aws_ebs_snapshot" "ebs-snapshot-uvdw74" {
  volume_id = "vol-placeholder"
  description = "Snapshot ebs-snapshot-uvdw74"
  Name = "ebs-snapshot-uvdw74"
  SourceVolumeStatus = "exists"
  tags = {
    Name = "ebs-snapshot-uvdw74"
    SourceVolumeStatus = "exists"
  }
}