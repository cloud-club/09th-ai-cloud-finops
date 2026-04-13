# Week 6 참고 자료 — L2 심화: 태그 거버넌스 + 탄력성 진단

이번 주는 L2 심화로 **tags_inventory.json**이 새로 추가됩니다.

태그 컴플라이언스 분석과 함께, 인프라 탄력성(Elasticity)을 진단하고
비용 최적화 기회를 찾는 문제들이 출제됩니다.

<br>

---

<br>

## 6주차에서 달라지는 점

- **tags_inventory.json** 추가: 리소스별 태그 커버리지, 누락 태그, 컴플라이언스 %
- 태그 분석을 통해 **비용 할당 사각지대** 파악 필요
- 탄력성 점수(elasticity score) 산출 가능

<br>

---

<br>

## AWS 태그 거버넌스 전략

> 태그 미설정 리소스가 50%면 비용 최적화 자체가 불가능

<br>

- **[Building a Cost Allocation Strategy (AWS Whitepaper)](https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/building-a-cost-allocation-strategy.html)**
  - AWS 공식 태깅 베스트 프랙티스 — 비용 할당 전략 수립법

<br>

- **[AWS Tagging Strategy Guide: Best Practices 2025 (CloudZero)](https://www.cloudzero.com/blog/aws-tagging-strategy/)**
  - 태그 전략 종합 가이드 — 어떤 태그를 먼저 적용할 것인가

<br>

- **[AWS Tagging Best Practices for FinOps, Cost Allocation, and Governance (Hyperglance)](https://www.hyperglance.com/blog/aws-tagging-strategy-best-practices/)**
  - FinOps 관점 태그 거버넌스 — owner, env, costCenter 필수 태그

<br>

- **[AWS Cost Allocation Tags: Best Practices 2025 (OptiBlack)](https://optiblack.com/insights/aws-cost-allocation-tags-best-practices-2024)**
  - 비용 할당 태그 활성화 및 추적 실전

<br>

- **[AWS Cost Allocation Guide: Tagging Best Practices (Duckbill)](https://www.duckbillhq.com/blog/aws-cost-allocation-guide-tagging-best-practices/)**
  - Duckbill의 실전 태그 가이드 — 재무팀과 엔지니어 모두 이해하는 태그

<br>

- **[Checklist for AWS Cost Allocation Tagging](https://awsforengineers.com/blog/checklist-for-aws-cost-allocation-tagging/)**
  - 체크리스트 형태로 빠르게 점검

<br>

---

<br>

## AWS 태그 정책 & 컴플라이언스

> Organizations 태그 정책으로 자동 강제하는 방법

<br>

- **[Enforce Consistent Tagging Across IaC with Tag Policies (AWS Blog)](https://aws.amazon.com/blogs/mt/enforce-consistent-tagging-across-iac-deployments-with-aws-organizations-tag-policies/)**
  - CloudFormation, Terraform, Pulumi 배포 시 태그 강제

<br>

- **[AWS Tagging Governance: A Comprehensive Guide (AWS re:Post)](https://repost.aws/articles/AR-7QunnciTFaPzqkAjjUGBQ/aws-tagging-governance-a-comprehensive-guide-to-native-services)**
  - AWS 네이티브 서비스를 활용한 태그 거버넌스 종합 가이드

<br>

- **[How Tag Policies Strengthen Cost Management (SeveralClouds)](https://www.severalclouds.com/success-stories/how-aws-organizations-tag-policies-strengthen-cost-management-and-access-governance)**
  - 태그 정책이 비용 관리에 미치는 실질적 효과

<br>

- **[Create and Enforce Tagging Strategy for Cost Visibility (AWS Blog)](https://aws.amazon.com/blogs/aws-cloud-financial-management/gs-create-and-enforce-your-tagging-strategy-for-more-granular-cost-visibility/)**
  - 태그 전략 생성 → 강제 → 비용 가시성 확보 단계별 가이드

<br>

- **[AWS Tag Policy Configuration Using Terraform (Medium)](https://medium.com/@thube09/aws-tag-policy-configuration-using-terraform-95bff77d37f9)**
  - Terraform으로 태그 정책 설정하는 실습

<br>

---

<br>

## 탄력성(Elasticity) 진단 & 라이트사이징

> 인프라가 트래픽 변화에 얼마나 효율적으로 대응하는가

<br>

- **[Cost Optimization for AWS EC2 Autoscaling (FinOps Foundation)](https://www.finops.org/wg/cost-optimization-for-aws-ec2-autoscaling/)**
  - FinOps Foundation 워킹 그룹 — Auto Scaling 비용 최적화

<br>

- **[AWS Auto Scaling Group Best Practices for FinOps & Reliability (Binadox)](https://www.binadox.com/blog/binadox-article-instance-in-auto-scaling-group/)**
  - ASG 설정과 FinOps/안정성 균형

<br>

- **[Mastering AWS Rightsizing: Reduce Cloud Waste by 45% (Trucost)](https://trucost.cloud/aws-rightsizing-cost-optimization-ec2-rightsizing/)**
  - 라이트사이징으로 45% 비용 절감 실전

<br>

- **[FinOps Guide to EC2 Instance Type Optimization (Binadox)](https://www.binadox.com/blog/binadox-finops-article-ec2-instance-type-optimization-1/)**
  - 인스턴스 타입 최적화 — 패밀리/세대/사이즈 변경 전략

<br>

- **[FinOps on AWS: Automated Cost Optimization Strategies (DEV Community)](https://dev.to/muhammad_yawar_malik/finops-on-aws-automated-cost-optimization-strategies-that-actually-work-3oah)**
  - 자동화된 비용 최적화 전략 실전

<br>

---

<br>

## 시나리오별 핵심 키워드 (5주차와 다른 시나리오 위주)

| 시나리오 | 핵심 포인트 | tags_inventory 활용 |
|----------|-----------|-------------------|
| Lambda 메모리 과잉 (L2-014) | 3008MB → 실사용 180MB | 태그로 함수 그룹별 비용 할당 |
| Lambda 타임아웃 과잉 (L2-015) | 900초 설정, 평균 2초 | Environment 태그로 dev/prod 구분 |
| Fargate 과잉 (L2-016) | P99 CPU 20% 미만 | Service 태그로 비용 추적 |
| Auto Scaling warm-up (L2-017) | 과잉 스케일아웃 반복 | Application 태그로 ASG 비용 식별 |
| Kinesis Shard 과잉 (L2-018) | 100 shard, 실사용 10 | CostCenter 태그 미설정 시 비용 미할당 |
| ElastiCache 과잉 (L2-019) | 6노드, Hit Rate 98% | Owner 태그로 책임 소재 확인 |
| RDS Replica 미사용 (L2-020) | Replica 3개, Primary만 사용 | Environment별 비용 분리 |
| SQS Polling (L2-021) | Short Polling 빈 응답 | 태그 없으면 어느 팀 비용인지 불명 |
| Kinesis Fan-Out (L2-022) | 배치에 Enhanced Fan-Out | 태그로 스트림별 비용 추적 |
| Athena 결과 S3 (L2-023) | 결과 버킷 Lifecycle 없음 | 태그로 쿼리 결과 vs 원본 구분 |
| CW 1초 해상도 (L2-024) | High Resolution 전체 적용 | 태그로 필수/비필수 메트릭 구분 |

<br>

---

<br>

## 참고: tags_inventory.json 분석 방법

```
tags_inventory.json 구조:
{
  "summary": {
    "tag_coverage_pct": 45.2,      ← 전체 태그 커버리지
    "fully_compliant": 3,           ← 태그 완비 리소스 수
    "non_compliant": 8              ← 태그 미비 리소스 수
  },
  "resources": [
    {
      "resource_name": "instance-abc",
      "resource_type": "aws_instance",
      "compliance_pct": 25,         ← 이 리소스의 태그 준수율
      "missing_tags": ["Owner", "CostCenter"]  ← 누락 태그
    }
  ]
}
```

### 분석 포인트
1. **tag_coverage_pct가 50% 미만**이면 비용 할당 사각지대 심각
2. **missing_tags에 CostCenter/Owner** 있으면 비용 책임 불명확
3. **problem 리소스와 non_compliant 리소스** 교차 분석 — 태그 없는 리소스가 낭비 리소스일 확률 높음
4. 리포트에 **태그 거버넌스 개선 권장사항** 포함하면 가산점
