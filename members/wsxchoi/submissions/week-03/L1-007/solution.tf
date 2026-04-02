# =============================================================================
# L1-007 최적화된 Terraform 설정
# =============================================================================
#
# 변경 사항 요약:
# - 기존 210개의 aws_ebs_snapshot 리소스를 전량 삭제
#   - 사유: 모든 스냅샷의 SourceVolumeStatus가 "deleted"로,
#     원본 볼륨이 이미 삭제되어 복원 대상이 없는 고아 스냅샷
#   - 메트릭 확인 결과 접근/사용 기록 전무 (표준편차 0, 추세 stable)
#   - 절감 효과: 약 $124.50/월
#
# 추가 권장 사항:
# - AWS Data Lifecycle Manager(DLM) 정책을 추가하여 향후 스냅샷 자동 관리
# =============================================================================

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

# [최적화] 기존 210개의 고아 EBS 스냅샷(ebs-snapshot-4vlwk5 ~ ebs-snapshot-qzsof5)을
# 전량 삭제했습니다. 모든 스냅샷의 원본 볼륨이 삭제된 상태(SourceVolumeStatus = "deleted")였으며,
# 복원 대상이 없어 보존 가치가 없습니다.

# [권장] AWS Data Lifecycle Manager를 통한 스냅샷 라이프사이클 자동 관리
# 아래는 예시 정책으로, 실제 환경에 맞게 target_tags와 보존 기간을 조정하세요.
#
# resource "aws_dlm_lifecycle_policy" "snapshot_lifecycle" {
#   description        = "EBS 스냅샷 자동 관리 정책"
#   execution_role_arn = aws_iam_role.dlm_lifecycle_role.arn
#   state              = "ENABLED"
#
#   policy_details {
#     resource_types = ["VOLUME"]
#
#     schedule {
#       name = "daily-snapshot"
#
#       create_rule {
#         interval      = 24
#         interval_unit = "HOURS"
#         times         = ["09:00"]
#       }
#
#       retain_rule {
#         count = 7  # 최근 7개 스냅샷만 유지
#       }
#
#       tags_to_add = {
#         ManagedBy = "DLM"
#       }
#     }
#
#     target_tags = {
#       Backup = "true"
#     }
#   }
# }