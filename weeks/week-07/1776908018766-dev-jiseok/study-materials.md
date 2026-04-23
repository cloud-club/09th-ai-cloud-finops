# Week 7 참고 자료 — L3: RI/SP 최적화 + 네트워크 비용 + 이상탐지

드디어 **L3 레벨**! 가장 비용 크고 찾기 어려운 아키텍처형 문제입니다.

멀티소스 로그 상관 분석 + 설계 리뷰가 필요하며, **알림(Alerts) 생성**도 채점에 포함됩니다.

<br>

---

<br>

## L3에서 달라지는 점

- **모든 생성기 활성화**: cloudwatch_format.json, cur_report.csv, ri_sp_coverage.json 추가
- **Alerts 채점 활성화** (10점): 비용 이상 감지 알림 설계
- 문제당 **멀티 서비스** 연관 분석 필요
- 멤버당 **2문제** (L1/L2의 3문제 → 2문제, 난이도 높음)

<br>

---

<br>

## RI/SP 최적화 전략

> Savings Plan Coverage 60%, RI 패밀리 미스매치, 멀티 계정 미통합

<br>

- **[AWS Savings Plans vs Reserved Instances: 5 Key Differences (Finout)](https://www.finout.io/blog/aws-savings-plans-vs-reserved-instances-5-key-differences-in-2025)**
  - SP vs RI 핵심 차이점 — 어떤 상황에 뭘 쓸 것인가

<br>

- **[SP vs RI: Which Saves More in 2026? (Hyperglance)](https://www.hyperglance.com/blog/aws-savings-plans-vs-reserved-instances/)**
  - 최신 비교 가이드 — 할인율, 유연성, 제약사항

<br>

- **[SP vs RI: How to Capture 72% Discounts (Hykell)](https://hykell.com/kb/platform-specific-guides/aws-savings-plans-vs-reserved-instances/)**
  - 하이브리드 전략 — SP(유연성) + RI(최대 할인) 조합

<br>

- **[Complete Comparison Guide (RightSpend)](https://rightspend.ai/blog/aws-reserved-instances-vs-savings-plans-2024.html)**
  - Compute SP(66%) vs EC2 SP(72%) vs Standard RI(75%) 할인율 비교

<br>

- **[A Roadmap To SP vs RI (CloudZero)](https://www.cloudzero.com/blog/savings-plans-vs-reserved-instances/)**
  - 의사결정 로드맵 — 워크로드 패턴별 최적 선택

<br>

---

<br>

## 네트워크 비용 최적화

> NAT Gateway cross-AZ, Transit Gateway 불필요 경유, PrivateLink 남발

<br>

- **[Stop the NAT Gateway Tax: Reduce Networking Costs by 40% (Hykell)](https://hykell.com/knowledge-base/aws-nat-gateway-cost-optimization/)**
  - NAT GW 비용 최적화 실전 가이드

<br>

- **[AWS NAT Gateway Pricing: 6 Ways To Cut Costs (CloudZero)](https://www.cloudzero.com/blog/reduce-nat-gateway-costs/)**
  - NAT GW 비용 절감 6가지 방법

<br>

- **[VPC Endpoints: Cost Comparison Guide (PCG)](https://pcg.io/insights/vpc-endpoints-explanation-and-cost-comparison/)**
  - Gateway Endpoint(무료) vs Interface Endpoint($8.76/mo/AZ) 비교

<br>

- **[Save by Using Anything Other Than a NAT Gateway (Vantage)](https://www.vantage.sh/blog/nat-gateway-vpc-endpoint-savings)**
  - S3/DynamoDB는 Gateway Endpoint(무료)로 79% 절감

<br>

- **[Complete Guide to Cloud Networking Costs (Zop)](https://zop.dev/resources/blogs/the-complete-guide-to-cloud-networking-costs-vpcs-nat-gateways-and-data-transfer/)**
  - VPC, NAT, Data Transfer 비용 구조 완전 해부

<br>

- **[Analyze Data Transfer and Adopt Cost Optimized Designs (AWS Blog)](https://aws.amazon.com/blogs/industries/analyze-data-transfer-and-adopt-cost-optimized-designs-to-realize-cost-savings/)**
  - AWS 공식 — 데이터 전송 분석 + 최적화 설계

<br>

---

<br>

## CUR 리포트 분석법

> cur_report.csv를 활용한 라인 아이템 레벨 비용 분석

<br>

### CUR 주요 컬럼
| 컬럼 | 설명 |
|------|------|
| lineItem/UsageStartDate | 사용 시작 시간 |
| lineItem/ProductCode | 서비스명 (AmazonEC2, AmazonS3 등) |
| lineItem/UsageType | 사용 유형 (DataTransfer-Regional-Bytes 등) |
| lineItem/UnblendedCost | 미혼합 비용 |
| resourceTags/user:Service | 리소스 태그 |

### 분석 포인트
1. **UsageType에 "DataTransfer"** 포함 항목 → 네트워크 비용 탐지
2. **ProductCode별 비용 합산** → 서비스별 비용 비중
3. **태그 없는 라인 아이템** → 비용 할당 사각지대

<br>

---

<br>

## ri_sp_coverage.json 분석법

```
{
  "coverage_summary": {
    "ri_coverage_pct": 30,    ← RI 커버리지
    "sp_coverage_pct": 25,    ← SP 커버리지
    "on_demand_pct": 45       ← On-Demand 비율 (높을수록 낭비)
  },
  "reservations": [...],      ← 기존 예약 목록
  "potential_savings": {
    "with_1yr_sp": { "monthly_savings_usd": 500 },
    "with_1yr_ri": { "monthly_savings_usd": 600 },
    "with_3yr_ri": { "monthly_savings_usd": 800 }
  }
}
```

### 핵심 분석
- **on_demand_pct > 40%**: SP/RI 추가 구매 필요
- **reservations에서 utilization_pct < 50%**: RI 미스매치 또는 워크로드 이동
- **potential_savings**: 1yr SP vs 3yr RI 비교하여 최적 추천

<br>

---

<br>

## 시나리오별 핵심 키워드 (L3)

| 시나리오 | 핵심 포인트 |
|----------|-----------|
| NAT GW Single-AZ (L3-025) | cross-AZ $0.01/GB + NAT $0.045/GB 이중 과금, 최대 79% 절감 |
| Transit GW 불필요 경유 (L3-026) | TGW $0.02/GB, VPC Peering으로 해결 가능 |
| PrivateLink 남발 (L3-027) | S3/DynamoDB는 Gateway Endpoint(무료) |
| NLB Cross-Zone (L3-028) | NLB cross-zone $0.01/GB, 고트래픽 시 월 수천 달러 |
| S3→NAT 경유 (L3-029) | Gateway Endpoint 미설정, NAT > EC2 비용 |
| RI 패밀리 미스매치 (L3-032) | m5 RI 구매 후 c5/r5로 이동 |
| SP Coverage Gap (L3-033) | Compute SP 커버리지 60% |
| 멀티 계정 미통합 (L3-034) | Organizations 없이 RI/SP 따로 구매 |
| Athena 파티셔닝 없음 (L3-035) | 전체 스캔 10TB vs 파티션 100GB |
| Redshift 24/7 (L3-036) | 배치용인데 야간/주말 풀가동 |
| S3 Cross-Region 전체 복제 (L3-037) | 필요 20%인데 100% 복제 |
| EKS Pod request 과잉 (L3-038) | request.cpu 실사용 5-10배 |
| CloudFront 없이 S3 직접 (L3-039) | CF $0.0085/GB vs 직접 $0.09/GB |
| Lambda→RDS Proxy 없음 (L3-040) | 연결수 폭발로 대형 인스턴스 사용 |
