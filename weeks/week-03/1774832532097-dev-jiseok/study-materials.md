# Week 3 참고 자료 — L1 미사용/낭비 리소스 비용 최적화

이번 주 문제는 **L1 레벨**로, Cost Explorer / Trusted Advisor에서 바로 식별 가능한 낭비 리소스를 찾는 문제입니다.

아래 자료들을 참고하면 문제 풀이에 도움이 됩니다.

<br>

---

<br>

## 종합 가이드

- **[AWS 비용을 줄일 수 있는 10가지 기법 (AWS 한국 블로그)](https://aws.amazon.com/ko/blogs/korea/10-things-you-can-do-today-to-reduce-aws-costs/)**
  - 전반적인 AWS 비용 절감 전략 10가지

<br>

- **[스타트업 엔지니어의 AWS 비용 최적화 경험기 (인프랩)](https://tech.inflab.com/20240227-finops-for-startup/)**
  - 실전 FinOps 적용 경험 공유

<br>

- **[AWS 비용 최적화 방법 (교보DTS)](https://blog.kyobodts.co.kr/2024/03/22/aws-%EB%B9%84%EC%9A%A9-%EC%B5%9C%EC%A0%81%ED%99%94-%EB%B0%A9%EB%B2%95/)**
  - 단계별 비용 최적화 전략

<br>

- **[AWS 비용 최적화 전략 TIP (스마일샤크)](https://www.smileshark.kr/post/aws-cost-optimization-tips)**
  - 미사용 리소스 정리 중심

<br>

- **[초보자도 할 수 있는 AWS 요금 줄이는 방법 (DevelopersIO)](https://dev.classmethod.jp/articles/ksw-cost-optimization/)**
  - 초보자 친화적 가이드

<br>

---

<br>

## EC2 / EBS 관련

> 해당 시나리오: 중지된 EC2, gp2→gp3 전환, EBS 스냅샷 방치, 미사용 AMI

<br>

- **[EBS gp2→gp3 마이그레이션으로 20% 비용 절감 (AWS 한국 블로그)](https://aws.amazon.com/ko/blogs/korea/migrate-your-amazon-ebs-volumes-from-gp2-to-gp3-and-save-up-to-20-on-costs/)**
  - gp3 전환 필독 자료. 다운타임 없이 전환 가능

<br>

- **[EBS gp2→gp3 마이그레이션 방법 (베스핀글로벌)](https://support.bespinglobal.com/ko/support/solutions/articles/73000615570--aws-ebs-%EB%B3%BC%EB%A5%A8-%ED%83%80%EC%9E%85-gp2-%E2%86%92-gp3-%EB%A7%88%EC%9D%B4%EA%B7%B8%EB%A0%88%EC%9D%B4%EC%85%98-%EB%B0%A9%EB%B2%95)**
  - 실습 가이드

<br>

- **[EBS 비용 최적화 확인 사항 (DevelopersIO)](https://dev.classmethod.jp/articles/jw-amazon-ebs-has-summarized-what-you-need-to-check-for-cost-optimization/)**
  - EBS 스냅샷/볼륨 정리 포인트

<br>

- **[FinOps Basics: EBS Snapshot Cleanup (Medium)](https://medium.com/@hildamachando4/finops-basics-optimizing-aws-ebs-snapshot-cleanup-7d3610cfe41e)**
  - orphaned 스냅샷 탐지 및 정리

<br>

- **[EBS Snapshot 비용 최적화 (nOps)](https://www.nops.io/blog/cost-optimize-ebs-snapshots-on-aws/)**
  - 스냅샷 비용 최적화 전략

<br>

- **[EC2 인스턴스 비용 절감 실전 가이드 (ITing)](https://iting.co.kr/tech-blog-aws-ec2-cost-optimization-2025-0424/)**
  - EC2 전반 비용 절감

<br>

- **[Amazon EC2 Cost Optimization: Top 12 Tips (DragonflyDB)](https://www.dragonflydb.io/finops/amazon-ec2-cost-optimization)**
  - EC2 최적화 12가지 팁

<br>

- **[AWS EC2 Cost Optimization Complete Guide (Hyperglance)](https://www.hyperglance.com/blog/aws-ec2-cost-optimization/)**
  - EC2 종합 최적화 가이드

<br>

---

<br>

## AWS 비용 관리 도구 (Trusted Advisor / Cost Explorer)

> 문제 풀이 시 "어떤 도구로 이 낭비를 발견할 수 있는가?"에 대한 답을 찾을 수 있습니다.

<br>

- **[Trusted Advisor 비용 최적화 검사 항목 (AWS 공식)](https://docs.aws.amazon.com/ko_kr/awssupport/latest/user/cost-optimization-checks.html)**
  - L1 시나리오 대부분을 자동 탐지하는 검사 항목 목록

<br>

- **[Well-Architected + Trusted Advisor 비용 최적화 리뷰 (AWS 한국)](https://aws.amazon.com/ko/blogs/korea/aws-well-architected-framework-aws-trusted-advisor-cost-optimization/)**
  - 데이터 기반 비용 최적화 리뷰 방법론

<br>

- **[Trusted Advisor로 비용 최적화하기 (AWS re:Post)](https://repost.aws/knowledge-center/trusted-advisor-cost-optimization)**
  - 실전 활용법

<br>

- **[AWS 비용 최적화 요금제 적용 (AWS Whitepaper)](https://docs.aws.amazon.com/ko_kr/whitepapers/latest/how-aws-pricing-works/aws-cost-optimization.html)**
  - AWS 공식 비용 최적화 백서

<br>

- **[AWS Cost Optimization Ultimate Guide (Flexera)](https://www.flexera.com/blog/finops/aws-cost-optimization-8-tools-and-tips-to-reduce-your-cloud-costs/)**
  - 도구 + 팁 종합

<br>

---

<br>

## 시나리오별 핵심 키워드

문제를 풀 때 아래 키워드를 중심으로 Terraform 코드와 메트릭을 분석하세요.

| 시나리오 | 핵심 키워드 | 절감 포인트 |
|----------|-----------|------------|
| 중지된 EC2 | `instance_state = stopped`, EBS 볼륨 과금 | 중지 ≠ 무료, EBS는 계속 과금 |
| gp2 → gp3 | `volume_type = gp2` | gp3 전환 시 20% 절감, 다운타임 없음 |
| 비연결 EIP | EIP가 인스턴스에 미연결 | 시간당 $0.005 과금 |
| Dev RDS Multi-AZ | `multi_az = true` + Dev/Staging 태그 | Dev 환경에 HA 불필요, 비용 2배 |
| 미사용 LB | 트래픽 0, 타겟 없음 | ALB/NLB 시간당 고정 과금 |
| CloudWatch Logs | `retention_in_days` 미설정(= 영구) | 90일 이상 로그 거의 불필요 |
| EBS 스냅샷 방치 | 소스 볼륨 삭제 후 스냅샷 잔존 | GB당 $0.05/월 |
| 미사용 AMI | AMI 등록 해제 미수행 | 연결 스냅샷 계속 과금 |
| ECR Lifecycle 없음 | `lifecycle_policy` 미설정 | 이미지 수백 개 누적 |
| DynamoDB 과잉 | Provisioned 모드, 사용률 10% | On-Demand 전환 검토 |
| S3 버전 정리 없음 | versioning ON + noncurrent 정책 없음 | 실데이터 3~10배 용량 누적 |
| RDS 백업 35일 | `backup_retention_period = 35` | 기본 7일 대비 5배 과금 |

<br>

---

<br>

## 참고: 문제 접근 방법

1. **README.md** → 회사 배경과 인프라 상황 파악

2. **main.tf** → Terraform 리소스 설정에서 낭비 포인트 식별

3. **metrics.json** → 30일간 CloudWatch 메트릭으로 실제 사용률 확인

4. **cost_report.json** → 6개월 비용 추이에서 이상 서비스 발견

5. 위 자료를 참고하여 **근본 원인 → 해결책 → 예상 절감액** 정리
