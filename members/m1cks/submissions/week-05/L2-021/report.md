# FinOps 분석 리포트 — L2-021

| 항목 | 내용 |
|------|------|
| 시나리오 ID | L2-021 |
| 회사 | FinCore (핀테크) |
| 난이도 | L2 |
| 카테고리 | SQS Overprovisioning (Short Polling) |
| 총 월간 절감액 | **$120.00** |
| 신뢰도 | 97% |

---

## 1. 발견된 문제

### [HIGH] sqs-queue-duew4e / vvl51h / y2aycr / q15qg4 / 3qv4aa — Short Polling 과잉 호출

| 항목 | 현재 (5개 큐) | 권고 | 정상 기준 (ok89mf) |
|------|--------------|------|-------------------|
| receive_wait_time_seconds | **0** (Short Polling) | **20** (Long Polling) | 20 |
| polling_interval_ms | 100ms | 20,000ms | 20,000ms |
| empty_receives_per_day | **2,000,000** | 3,000 | 3,000 |
| messages_per_day | 1,000 | 1,000 | 5,000 |

**문제**: `receive_wait_time_seconds=0` (Short Polling) 설정으로 100ms마다 폴링하여 메시지가 없어도 즉시 빈 응답을 반환. 하루 200만 건의 불필요한 API 호출 발생.

**비용 영향**:
- 5큐 × 2,000,000 empty_receives/day × 30일 = **300M API 호출/월**
- 300M × $0.40/백만 = **$120.00/월 낭비**
- SQS 월 지출($133~$178) 대비 약 75~89%가 낭비

**예상 절감**: **$120.00/월** (5개 큐 합산)

---

## 2. 정상 큐 비교 (레퍼런스)

| 항목 | sqs-queue-ok89mf / i2h4yv |
|------|--------------------------|
| receive_wait_time_seconds | 20 (Long Polling) |
| polling_interval_ms | 20,000ms |
| empty_receives_per_day | 3,000 |
| messages_per_day | 5,000 |

Long Polling 큐는 메시지가 올 때까지 최대 20초 대기 → 빈 수신 최소화.

---

## 3. 근본 원인 분석

Short Polling (`receive_wait_time_seconds=0`)은 큐에 메시지가 없어도 즉시 빈 응답을 반환하므로, 100ms 폴링 간격과 결합하면:
- 초당 10회 폴링 → 864,000회/일/큐
- 실제 메시지(1,000건) 대비 2,000배 과잉 호출
- SQS는 **빈 수신도 API 호출로 과금** ($0.40/백만 건)

5개 문제 큐가 동일한 설정을 가지고 있어 초기 배포 시 기본값 또는 복붙 실수로 Short Polling이 적용된 것으로 추정.

---

## 4. 해결 방안

### 즉시 조치: Long Polling 전환
```hcl
# 변경 전
receive_wait_time_seconds = 0
polling_interval_ms       = 100

# 변경 후
receive_wait_time_seconds = 20
polling_interval_ms       = 20000
```

**효과**: Terraform 1줄 변경으로 즉시 $120/월 절감. 메시지 처리 지연 없음 (Long Polling은 메시지 도착 즉시 반환).

---

## 5. Unit Economics 변화

| 지표 | 현재 | 최적화 후 | 개선율 |
|------|------|-----------|--------|
| cost_per_1k_requests | $0.080 | $0.074 | 7.8% ↓ |
| trend | — | improving | — |

---

## 6. 절감액 요약

| 리소스 | 문제 유형 | 현재 비용/큐/월 | 절감액/큐/월 |
|--------|-----------|----------------|-------------|
| sqs-queue-duew4e | Short Polling → Long Polling | ~$24 | ~$24 |
| sqs-queue-vvl51h | Short Polling → Long Polling | ~$24 | ~$24 |
| sqs-queue-y2aycr | Short Polling → Long Polling | ~$24 | ~$24 |
| sqs-queue-q15qg4 | Short Polling → Long Polling | ~$24 | ~$24 |
| sqs-queue-3qv4aa | Short Polling → Long Polling | ~$24 | ~$24 |
| **합계** | | ~$120 | **$120.00** |

pricing_note 교차 검증: "5큐 × 60M 빈 수신/월 = 300M 호출 → $120/월" ✓
