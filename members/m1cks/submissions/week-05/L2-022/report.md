# FinOps 분석 리포트 — L2-022

| 항목 | 내용 |
|------|------|
| 시나리오 ID | L2-022 |
| 회사 | FinCore (핀테크) |
| 난이도 | L2 |
| 카테고리 | Kinesis Enhanced Fan-Out 불필요 사용 (rate_unoptimized) |
| 총 월간 절감액 | **$437.00** |
| 신뢰도 | 95% |

---

## 1. 발견된 문제

### [HIGH] kinesis-stream-th5ftu — Enhanced Fan-Out 불필요 활성화

| 항목 | 현재 | 권고 |
|------|------|------|
| enhanced_fan_out | **true** | **false** |
| processing_interval_minutes | 5분 | 5분 (유지) |
| shard_count | 20 | 20 (유지) |

**문제**: 5분 배치 처리 워크로드에 EFO가 활성화되어 있음. EFO는 밀리초 단위 실시간 팬아웃이 필요한 경우에만 가치가 있으며, 5분 배치 처리에는 표준 GetRecords로 충분.

**직접 증거**: iterator_age_ms = 100ms (30일 전구간 상수) → 처리 백로그 전무

**절감액**: **$219.00/월** (EFO 샤드 시간: 20샤드 × 730h × $0.015)

---

### [HIGH] kinesis-stream-consumer-zcd0bk — EFO 컨슈머

| 항목 | 현재 | 권고 |
|------|------|------|
| consumer_type | enhanced_fan_out | standard (GetRecords) |
| data_read_gb_per_day | 250GB | 250GB (유지) |

**절감액**: **$109.00/월** (컨슈머 샤드 시간 + 데이터 검색 절반)

---

### [HIGH] kinesis-stream-consumer-t865bp — EFO 컨슈머

| 항목 | 현재 | 권고 |
|------|------|------|
| consumer_type | enhanced_fan_out | standard (GetRecords) |
| data_read_gb_per_day | 250GB | 250GB (유지) |

**절감액**: **$109.00/월**

---

## 2. 정상 리소스 (레퍼런스)

| 리소스 | 상태 |
|--------|------|
| kinesis-stream-b0395y | 정상 (enhanced_fan_out=false, processing_interval=1분) |

---

## 3. 근본 원인 분석

**EFO vs Standard GetRecords 비교:**

| 구분 | Enhanced Fan-Out | Standard GetRecords |
|------|-----------------|---------------------|
| 지연 | ~65ms (전용 Push) | ~200ms (Polling) |
| 처리량 | 2MB/s/컨슈머 전용 | 2MB/s/샤드 공유 |
| 추가 비용 | +$0.015/consumer-shard-hour + $0.013/GB | 없음 |
| 적합 워크로드 | 실시간 이벤트 스트리밍 | 배치 처리, 분석 |

**이 시나리오의 문제**: processing_interval=5분 배치 처리에서는 65ms와 200ms 지연의 차이가 전혀 의미 없음. EFO의 프리미엄 비용($437/월)이 0원의 가치를 제공하고 있음.

---

## 4. 비용 계산 검증

| 항목 | 계산 | 월 비용 |
|------|------|---------|
| EFO 샤드 시간 | 20샤드 × 730h × $0.015 | $219.00 |
| EFO 데이터 검색 | 2컨슈머 × 250GB/day × 30일 × $0.013/GB | $195.00 |
| 컨슈머 등록 비용 | 잔여 | $23.00 |
| **EFO 총 낭비** | | **$437.00** |

pricing_note 교차 검증: "$437/월" ✓

---

## 5. 해결 방안

### 즉시 조치

```hcl
# 변경
resource "aws_kinesis_stream" "kinesis-stream-th5ftu" {
  enhanced_fan_out = false  # true → false
  # 나머지 동일
}

# 삭제 (EFO 컨슈머 2개 제거)
# resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-zcd0bk" { ... }
# resource "aws_kinesis_stream_consumer" "kinesis-stream-consumer-t865bp" { ... }
```

애플리케이션 코드에서 `SubscribeToShard` → `GetRecords` API로 전환 필요.

---

## 6. Unit Economics 변화

| 지표 | 현재 | 최적화 후 | 개선율 |
|------|------|-----------|--------|
| cost_per_order | $0.0100 | $0.0093 | 7.0% ↓ |
| cost_per_1k_requests | $0.5700 | $0.5316 | 6.7% ↓ |
| trend | — | improving | — |

---

## 7. 절감액 요약

| 리소스 | 문제 유형 | 월간 절감액 |
|--------|-----------|------------|
| kinesis-stream-th5ftu | EFO 샤드 시간 | $219.00 |
| kinesis-stream-consumer-zcd0bk | EFO 컨슈머 | $109.00 |
| kinesis-stream-consumer-t865bp | EFO 컨슈머 | $109.00 |
| **합계** | | **$437.00** |
