# Week 5 참고 자료 — L2: 단위경제 분석 + 오버프로비저닝 탐지

이번 주부터 **L2 레벨**입니다!

L1과 달리 CloudWatch 메트릭을 **시계열로 분석**해야 하고, **business_metrics.json**이 새로 추가되어
단위경제(Unit Economics) 분석도 채점 항목에 포함됩니다.

<br>

---

<br>

## L2에서 달라지는 점

- **business_metrics.json** 추가: 일별 트래픽, 주문수, 단위경제 데이터
- **채점 항목 추가**: Economics (단위경제 분석) 15점 추가
- **메트릭 패턴 분석**: 단순 유무가 아닌 시계열 트렌드 해석 필요
- **제출 시 unit_economics 섹션** 포함 권장

<br>

---

<br>

## 단위경제 (Unit Economics) 분석

> 이번 주 핵심 신규 역량 — "얼마나 비효율적인가"를 비즈니스 관점에서 수치화

<br>

- **[A Guide to Cloud Unit Economics (Datadog)](https://www.datadoghq.com/blog/cloud-unit-economics/)**
  - 클라우드 단위경제 개념 완전 정리 — cost per request, cost per user 등

<br>

- **[How Unit Economics Can Improve Software Company Margins (FinOps Foundation)](https://www.finops.org/assets/how-unit-economics-can-improve-margins/)**
  - FinOps Foundation 공식 자료 — 단위경제로 마진 개선하는 방법

<br>

- **[Decoding Cloud Costs: A Guide to Strategic Unit Economics (Hyperglance)](https://www.hyperglance.com/blog/cloud-unit-economics/)**
  - 전략적 단위경제 분석 가이드 — 의사결정에 활용하는 방법

<br>

- **[FinOps as Code: Automating Unit Economics (Vantage)](https://www.vantage.sh/blog/automate-unit-economics)**
  - 코드로 단위경제를 자동화하는 실전 사례

<br>

---

<br>

## Lambda 메모리/타임아웃 최적화 (L2-014, L2-015)

> 메모리 3008MB 고정인데 실사용 180MB, 타임아웃 900초인데 평균 2초

<br>

- **[AWS Lambda Power Tuning (GitHub)](https://github.com/alexcasalboni/aws-lambda-power-tuning)**
  - Step Functions 기반 메모리 최적화 도구 — 비용/성능/밸런스 3가지 전략

<br>

- **[Optimize Lambda Memory for Cost & Performance (Beefed.ai)](https://beefed.ai/en/optimize-lambda-memory-cost-performance)**
  - 메모리 튜닝으로 20-50% 비용 절감 가능

<br>

- **[Reducing Lambda Latency by 76% with Power Tuning](https://www.marksayson.com/blog/lambda-power-tuning/)**
  - 실전 사례 — 레이턴시 76% 감소 + 비용 절감

<br>

- **[Lambda Function Optimization for Performance and Cost](https://www.kodyaz.com/aws/lambda-function-configuration-for-performance-and-cost-on-aws.aspx)**
  - CPU-bound vs I/O-bound 함수별 최적화 전략이 다름

<br>

- **[AWS Lambda Optimization: Best Tools & Techniques for 2026 (Sedai)](https://sedai.io/blog/best-tools-optimizing-aws-lambda)**
  - 2026 최신 Lambda 최적화 도구 모음

<br>

---

<br>

## ECS Fargate 라이트사이징 (L2-016)

> vCPU/메모리 과잉 설정으로 P99 CPU 20% 미만

<br>

- **[Optimize Costs for Fargate Tasks on ECS (AWS 공식)](https://docs.aws.amazon.com/prescriptive-guidance/latest/optimize-costs-microsoft-workloads/optimizer-ecs-fargate.html)**
  - AWS Compute Optimizer로 최적 CPU/메모리 추천 받기

<br>

- **[AWS Fargate Cost Optimization Recommendations (CloudZero)](https://docs.cloudzero.com/docs/aws-fargate-rightsizing-for-amazon-ecs)**
  - Fargate 라이트사이징 실전 가이드

<br>

- **[Optimizing AWS ECS for Cost and Performance (DEV Community)](https://dev.to/devopshere/optimizing-aws-ecs-for-cost-and-performance-a-comprehensive-guide-f2d)**
  - ECS 비용/성능 최적화 종합 가이드

<br>

- **[AWS Fargate Cost Optimization Tips: Cut Container Bill by 40% (Hykell)](https://hykell.com/kb/platform-specific-guides/aws-fargate-cost-optimization-tips/)**
  - 40% 비용 절감 실전 팁

<br>

- **[Mastering Fargate Cost Optimization: Right-Sizing and Task Scheduling (CloudKeeper)](https://www.cloudkeeper.com/insights/blog/aws-ecs-fargate-cost-optimization-task-scheduling-strategies)**
  - 라이트사이징 + 스케줄링 전략

<br>

---

<br>

## Kinesis Shard 최적화 (L2-018)

> 100 shard 중 실사용 10개, On-Demand 모드나 Auto Scaling 미적용

<br>

- **[Kinesis On-Demand vs Provisioned: Cost Comparison (Trek10)](https://www.trek10.com/blog/amazon-kinesis-data-streams-on-demand-vs.-provisioned-billing-mode-cost-comparison)**
  - Provisioned가 On-Demand보다 27배 저렴할 수 있음 — 워크로드별 비교

<br>

- **[Autoscale Kinesis Streams for Cost Savings (CloudFix)](https://cloudfix.com/blog/amazon-kinesis-stream-autoscaling/)**
  - Auto Scaling 설정으로 비용 절감

<br>

- **[Auto Scaling Kinesis with CloudWatch and Lambda (AWS Blog)](https://aws.amazon.com/blogs/big-data/auto-scaling-amazon-kinesis-data-streams-using-amazon-cloudwatch-and-aws-lambda/)**
  - CloudWatch + Lambda로 자동 스케일링 구현

<br>

- **[Kinesis On-Demand Advantage for Instant Throughput (AWS Blog)](https://aws.amazon.com/blogs/big-data/amazon-kinesis-data-streams-launches-on-demand-advantage-for-instant-throughput-increases-and-streaming-at-scale/)**
  - On-Demand Advantage 모드 — warm throughput + committed pricing

<br>

---

<br>

## ElastiCache 노드 최적화 (L2-019)

> Redis 6노드, Hit Rate 98%, 연결 50개 → 2노드면 충분

<br>

- **[Optimize ElastiCache for Redis Workloads (AWS Blog)](https://aws.amazon.com/blogs/database/optimize-the-cost-of-your-amazon-elasticache-for-redis-workloads/)**
  - ElastiCache 비용 최적화 공식 가이드

<br>

- **[ElastiCache Pricing: Everything You Need to Know (Dragonfly)](https://www.dragonflydb.io/guides/elasticache-pricing)**
  - 요금 구조 상세 분석 — 노드 타입별 비교

<br>

- **[Cost Optimization for ElastiCache (Matoffo)](https://matoffo.com/cost-optimization-for-amazon-elasticache/)**
  - Auto Scaling, Data Tiering, Reserved Instance 전략

<br>

- **[Monitoring Best Practices with ElastiCache Redis (AWS Blog)](https://aws.amazon.com/blogs/database/monitoring-best-practices-with-amazon-elasticache-for-redis-using-amazon-cloudwatch/)**
  - CloudWatch 메트릭으로 과잉/부족 판단하는 방법

<br>

---

<br>

## SQS Long Polling (L2-021)

> Short Polling으로 빈 큐 초당 수십회 폴링 → API 호출 비용 낭비

<br>

- **[SQS Short and Long Polling (AWS 공식)](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-short-and-long-polling.html)**
  - 공식 문서 — Long Polling으로 빈 응답 97% 감소

<br>

- **[Reducing Amazon SQS Costs (AWS 공식)](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/reducing-costs.html)**
  - SQS 비용 절감 공식 가이드

<br>

- **[Setting Up Long Polling Best Practices (AWS 공식)](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/best-practices-setting-up-long-polling.html)**
  - WaitTimeSeconds 설정 권장 사항

<br>

- **[Fast, Scalable and Cost-Effective SQS Polling (Medium)](https://medium.com/@tijl.b/fast-scalable-and-cost-effective-polling-of-sqs-queues-bb1e2504481f)**
  - Long Polling + 배치 조합으로 비용 최적화 실전

<br>

---

<br>

## 시나리오별 핵심 키워드

| 시나리오 | 핵심 포인트 | 분석 방법 |
|----------|-----------|----------|
| Lambda 메모리 과잉 (L2-014) | 3008MB 할당, 실사용 180MB | Power Tuning, Duration×Memory 과금 |
| Lambda 타임아웃 과잉 (L2-015) | 900초 설정, 평균 2초 실행 | 에러 시 900초 과금, P99 확인 |
| Fargate vCPU/메모리 고정 (L2-016) | P99 CPU 20% 미만 | vCPU-시간 × 메모리-시간 곱셈 요금 |
| Auto Scaling warm-up 미설정 (L2-017) | 과잉 스케일아웃 반복 | 인스턴스 수 시계열 패턴 확인 |
| Kinesis Shard 과잉 (L2-018) | 100 shard, 실사용 10 | On-Demand 또는 Auto Scaling |
| ElastiCache 노드 과잉 (L2-019) | 6노드, Hit Rate 98% | 연결 수, 메모리 사용률 확인 |
| RDS Read Replica 미사용 (L2-020) | Replica 3개, 읽기 전부 Primary | 앱 연결 설정 확인 |
| SQS Long Polling 미설정 (L2-021) | Short Polling, 빈 응답 반복 | API 호출 횟수 확인 |
| Kinesis Enhanced Fan-Out 불필요 (L2-022) | 배치 처리에 Enhanced Fan-Out | $0.013/GB + $0.015/shard-hour |
| Athena 결과 S3 무제한 저장 (L2-023) | 결과 버킷 Lifecycle 없음 | 쿼리 결과 7일이면 충분 |
| CloudWatch 1초 해상도 (L2-024) | High Resolution 전체 적용 | 표준(60초)의 3배 요금, 5%만 필요 |

<br>

---

<br>

## 참고: L2 문제 접근 방법

1. **README.md** → 회사 배경 파악 (L1과 동일)
2. **main.tf** → 리소스 설정에서 과잉 포인트 식별
3. **metrics.json** → 30일 시계열에서 **패턴**(피크/평균/트렌드) 분석
4. **cost_report.json** → 서비스별 비용 추이
5. **business_metrics.json** (신규!) → 일별 트래픽/주문수/단위경제 데이터
6. **단위경제 계산**: cost_per_order, cost_per_1k_requests 등을 직접 산출하여 비효율 수치화
