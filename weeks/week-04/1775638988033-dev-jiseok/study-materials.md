# Week 4 참고 자료 — L1 심화: 스토리지, 로그, 요금 최적화

이번 주는 L1 심화로, CloudWatch Logs, S3 Lifecycle, ECR, DynamoDB, RDS 백업 등
**스토리지와 요금 구조를 이해해야 풀 수 있는 문제**들이 출제됩니다.

<br>

---

<br>

## CloudWatch Logs 비용 최적화 (L1-006)

> 기본 retention이 "Never Expire"라서 로그가 무한 누적되는 문제

<br>

- **[Reduce Log Storage Costs by Automating Retention Settings (AWS Blog)](https://aws.amazon.com/blogs/infrastructure-and-automation/reduce-log-storage-costs-by-automating-retention-settings-in-amazon-cloudwatch/)**
  - Lambda + EventBridge로 신규 Log Group에 자동으로 retention 설정하는 방법

<br>

- **[Mastering CloudWatch Log Retention: A FinOps Guide (Binadox)](https://www.binadox.com/blog/binadox-finops-article-cloudwatch-log-retention-optimization/)**
  - FinOps 관점에서 로그 보존 기간 최적화 전략

<br>

- **[Analyzing, Optimizing, and Reducing CloudWatch Costs (AWS 공식)](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_billing.html)**
  - CloudWatch 전체 비용 구조 이해 — 로그 수집/저장/분석 각각의 요금

<br>

- **[CloudWatch Logs Cost Optimization Strategies (CloudKeeper)](https://www.cloudkeeper.com/insights/blog/aws-cloudwatch-logs-metrics-cost-optimization-strategies)**
  - 로그 수집량 줄이기, S3 Export, Subscription Filter 활용

<br>

- **[AWS Cost Reduction: CloudWatch Logs Retention Policy (Medium)](https://medium.com/@ronancunningham72/aws-cost-reduction-save-money-with-a-cloudwatch-logs-group-retention-policy-62a19e1dabe7)**
  - 실전 경험기 — retention 설정만으로 비용 절감한 사례

<br>

- **[Automating CloudWatch Log Retention with Lambda (CloudThat)](https://www.cloudthat.com/resources/blog/automating-amazon-cloudwatch-log-retention-with-aws-lambda-and-amazon-eventbridge)**
  - Lambda 코드 포함 자동화 실습 가이드

<br>

---

<br>

## S3 Lifecycle 정책 (L1-011, L1-012)

> Standard에 영구 적체된 데이터를 Glacier로 이동하거나, 버전 정리하는 문제

<br>

- **[How to Cut Your AWS S3 Costs: Smart Lifecycle Policies and Versioning (Eon)](https://www.eon.io/blog/cut-aws-s3-costs)**
  - Lifecycle + Versioning 조합으로 비용 절감하는 실전 가이드

<br>

- **[AWS Storage Service Cost Optimization Guide 2025 (SquareOps)](https://squareops.com/knowledge/how-to-optimize-aws-storage-costs-using-tiering-lifecycle-policies/)**
  - 스토리지 티어링 전략 — Standard → IA → Glacier 단계별 전환

<br>

- **[S3 Lifecycle Policies: The 'Set and Forget' Savings (Cloud Kiln)](https://cloudkiln.com/blog/s3-lifecycle-policies)**
  - 설정 후 잊어도 되는 자동 절감 전략

<br>

- **[Reduce S3 Storage Costs with Lifecycle Policies (OneUptime)](https://oneuptime.com/blog/post/2026-02-12-reduce-s3-storage-costs-lifecycle-policies/view)**
  - Standard → Glacier Deep Archive 전환 시 95% 절감 사례

<br>

- **[Mastering S3 Lifecycle Policies (Medium)](https://medium.com/@charlotterhodeszzz06/mastering-amazon-s3-lifecycle-policies-a-detailed-guide-to-automated-storage-managementand-cost-67690ad046e3)**
  - S3 Lifecycle 정책 상세 가이드 — 규칙 작성법부터 주의사항까지

<br>

- **[S3 Lifecycle Management: 2025 Best Practices (AVM)](https://avm.io/aws-s3-lifecycle-management-2025-best-practices/)**
  - 128KB 미만 객체 전환 제한 등 최신 변경사항 반영

<br>

---

<br>

## ECR 이미지 Lifecycle (L1-009)

> Lifecycle 정책 없이 도커 이미지가 수백 개 누적되는 문제

<br>

- **[ECR Lifecycle Policies (AWS 공식)](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html)**
  - 공식 문서 — 개수 기반 / 기간 기반 규칙 설정법

<br>

- **[Save Money With AWS ECR Lifecycle Policies (TechRover)](https://www.techrover.us/2024/12/10/save-with-aws-ecr-lifecycle-policies/)**
  - 월 $400 → $15로 절감한 실전 사례

<br>

- **[ECR Lifecycle Policy 설정 가이드 (younsl)](https://younsl.github.io/blog/ecr-lifecycle-policy-cheat-sheet/)**
  - 한국어 치트시트 — 빠르게 참고하기 좋음

<br>

- **[AWS ECR 비용 절감 (swtpumpkin)](https://swtpumpkin.github.io/backend/aws/awsEcrDescreseCost/)**
  - 한국어 실전 경험기

<br>

- **[AWS ECR Optimization (FinOps Foundation)](https://www.finops.org/wg/aws-ecr-optimization/)**
  - FinOps Foundation의 ECR 최적화 워킹 그룹 자료

<br>

---

<br>

## DynamoDB 용량 최적화 (L1-010)

> Provisioned 모드로 고정해놓고 실사용률 10%인 문제

<br>

- **[DynamoDB Auto Scaling: Performance and Cost Optimization (AWS Blog)](https://aws.amazon.com/blogs/database/amazon-dynamodb-auto-scaling-performance-and-cost-optimization-at-any-scale/)**
  - Auto Scaling으로 30.8% 비용 절감, Reserved Capacity 병행 시 55.1% 절감

<br>

- **[Optimize Costs by Scheduling Provisioned Capacity (AWS Blog)](https://aws.amazon.com/blogs/database/optimize-costs-by-scheduling-provisioned-capacity-for-amazon-dynamodb/)**
  - 시간대별 용량 스케줄링으로 야간/주말 비용 절감

<br>

- **[DynamoDB On-Demand vs Provisioned: The Ultimate Comparison (Dynobase)](https://dynobase.dev/dynamodb-on-demand-vs-provisioned-scaling/)**
  - peak/average 비율 4x 기준으로 모드 선택하는 의사결정 프레임워크

<br>

- **[Demystifying DynamoDB On-Demand Capacity Mode (AWS Blog)](https://aws.amazon.com/blogs/database/demystifying-amazon-dynamodb-on-demand-capacity-mode/)**
  - On-Demand 모드의 내부 동작 원리와 비용 구조

<br>

- **[Cost Optimization in DynamoDB: Choosing the Right Capacity Mode (Zircon)](https://zircon.tech/blog/cost-optimization-in-aws-dynamodb-choosing-the-right-capacity-mode/)**
  - 워크로드 패턴별 최적 모드 선택 가이드

<br>

---

<br>

## RDS 백업 보존 기간 (L1-013)

> 백업 보존 기간 35일 설정으로 불필요한 스토리지 과금

<br>

- **[Demystifying Amazon RDS Backup Storage Costs (AWS Blog)](https://aws.amazon.com/blogs/database/demystifying-amazon-rds-backup-storage-costs/)**
  - RDS 백업 비용 구조 완전 해부 — 무료 범위, 초과 요금($0.095/GiB)

<br>

- **[Programmatic Approach to Optimize RDS Snapshot Costs (AWS Blog)](https://aws.amazon.com/blogs/database/programmatic-approach-to-optimize-the-cost-of-amazon-rds-snapshots/)**
  - 자동으로 불필요한 스냅샷 식별 및 정리하는 방법

<br>

- **[Optimize AWS Backup Costs for RDS (AWS re:Post)](https://repost.aws/knowledge-center/backup-optimize-costs-rds-aurora)**
  - RDS/Aurora 백업 비용 최적화 실전 가이드

<br>

- **[AWS RDS: Quick Tips for Cutting Costs (CloudChipr)](https://cloudchipr.com/blog/aws-rds-quick-tips-for-cutting-costs)**
  - RDS 비용 절감 빠른 팁 모음

<br>

---

<br>

## AMI / 스냅샷 자동 정리 (L1-008)

> 미사용 AMI와 연결된 스냅샷이 계속 과금되는 문제

<br>

- **[Automating Snapshot and AMI Cleanup with Lambda (Medium)](https://medium.com/@CloudifyOps/automating-snapshot-and-ami-cleanup-with-aws-lambda-38f8725bb5fd)**
  - Lambda로 orphaned AMI/스냅샷 자동 정리 구현

<br>

- **[Controlling AWS Costs by Deleting Unused EBS Volumes (AWS Blog)](https://aws.amazon.com/blogs/mt/controlling-your-aws-costs-by-deleting-unused-amazon-ebs-volumes/)**
  - CloudTrail + Lambda + OpsItems로 미사용 볼륨 자동 탐지

<br>

- **[Automate EBS Snapshot Cleanup with Lambda (Medium)](https://medium.com/my-experiments-with-aws/automating-aws-snapshot-cleanup-with-lambda-for-cost-optimization-439260beabac)**
  - 실전 Lambda 코드 포함 자동화 가이드

<br>

- **[lambda-cleanup-ebs-ami (GitHub)](https://github.com/base2Services/lambda-cleanup-ebs-ami)**
  - 바로 배포 가능한 Lambda 함수 오픈소스

<br>

---

<br>

## 시나리오별 핵심 키워드

| 시나리오 | 핵심 키워드 | 절감 포인트 |
|----------|-----------|------------|
| 중지 EC2 (L1-001) | `instance_state = stopped` + EBS 과금 | EBS GB당 $0.10/월 계속 과금 |
| 미연결 EIP (L1-003) | EIP 미연결 상태 | 시간당 $0.005 |
| Dev RDS Multi-AZ (L1-004) | `multi_az = true` + dev 태그 | HA 불필요 환경에서 비용 2배 |
| 미사용 LB (L1-005) | 트래픽 0 ALB/NLB | 시간당 $0.0225 고정 과금 |
| CW Logs 영구 보존 (L1-006) | `retention_in_days` 미설정 | 로그 $0.03/GB/월 무한 누적 |
| 미사용 AMI (L1-008) | AMI 미등록 해제 | 연결 스냅샷 GB당 $0.05/월 |
| ECR Lifecycle 없음 (L1-009) | `lifecycle_policy` 미설정 | 이미지 GB당 $0.10/월 |
| DynamoDB 과잉 (L1-010) | Provisioned, 사용률 10% | On-Demand 또는 Auto Scaling |
| S3 Lifecycle 없음 (L1-011) | 전체 Standard 보관 | Glacier 전환 시 83~95% 절감 |
| S3 버전 정리 (L1-012) | noncurrent 정책 없음 | 실데이터 3~10배 누적 |
| RDS 백업 35일 (L1-013) | `backup_retention_period = 35` | 기본 7일 대비 5배 과금 |
