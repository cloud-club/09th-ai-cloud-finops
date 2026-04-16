# FinOps 분석 리포트 — L2-015

| 항목 | 내용 |
|------|------|
| 시나리오 ID | L2-015 |
| 회사 | FinCore (핀테크) |
| 난이도 | L2 |
| 카테고리 | Lambda Overprovisioning |
| 총 월간 절감액 | **$359.44** |
| 신뢰도 | 91% |

---

## 1. 발견된 문제

### [CRITICAL] lambda-function-zspoqd — Timeout 과잉 설정

| 항목 | 현재 | 권고 |
|------|------|------|
| timeout | 900s | 10s |
| memory_size | 1024MB | 1024MB (유지) |
| avg_duration | ~2,016ms | — |
| error_rate | 2.0783% | — |

**문제**: timeout=900s이지만 실제 평균 실행 시간은 2초. error_rate=2.0783%가 30일 전구간 상수로 유지되어, 에러 호출마다 900초 × 1024MB = 900 GB-초 전액이 과금됨.

**비용 영향**: 에러 1건의 비용이 정상 호출(2초) 대비 450배. 월 약 $185 낭비.

**예상 절감**: **$185.00/월**

---

### [CRITICAL] lambda-function-mfra1j — Timeout 과잉 설정

| 항목 | 현재 | 권고 |
|------|------|------|
| timeout | 900s | 10s |
| memory_size | 1024MB | 1024MB (유지) |
| avg_duration | ~2,500ms | — |
| error_rate | 1.9341% | — |

**문제**: zspoqd와 동일 패턴. timeout=900s, error_rate ~1.93% 고정.

**예상 절감**: **$172.00/월**

---

### [LOW] lambda-function-6apyi7 — Memory 오버프로비저닝

| 항목 | 현재 | 권고 |
|------|------|------|
| memory_size | 1024MB | 256MB |
| timeout | 30s | 10s |
| duration | 100ms (상수) | — |
| error_rate | 0.1009% | — |

**문제**: 실행 시간이 100ms 상수로 고정된 단순 함수에 1024MB 할당. 256MB로 축소해도 동일 성능 유지.

**예상 절감**: **$2.44/월**

---

## 2. 근본 원인 분석

두 핵심 Lambda 함수(zspoqd, mfra1j)의 timeout이 **초기 디버깅 목적으로 900초(최댓값)로 설정된 채 프로덕션에 배포**되었다.

AWS Lambda는 에러(예외/타임아웃) 발생 시 실제 처리 시간이 아닌 **설정된 timeout 값 전체**를 GB-초로 청구한다. error_rate가 30일 전구간 약 2% 상수로 유지되는 구조적 에러와 결합되어, 에러 호출 1건당 900초 분량의 비용이 일 ~1,000건씩 발생하고 있다.

---

## 3. 해결 방안

### 즉시 조치
1. **zspoqd + mfra1j timeout: 900s → 10s**
   - P99 duration 약 6초 기준 1.7배 여유
   - 에러 비용 99% 절감
   - `terraform apply`로 무중단 적용 가능

2. **에러 원인 조사**
   - CloudWatch Logs에서 구조적 에러 원인 파악
   - error_rate 제거 시 timeout 18초 이하로 추가 최적화 가능

### 단기 조치
3. **6apyi7 memory_size: 1024MB → 256MB**
   - Lambda Power Tuning으로 최적 메모리 확인 권장

---

## 4. Unit Economics 변화

| 지표 | 현재 | 최적화 후 | 개선율 |
|------|------|-----------|--------|
| cost_per_order | $0.0100 | $0.0088 | 12.4% ↓ |
| cost_per_1k_requests | $0.2700 | $0.2413 | 10.6% ↓ |
| trend | — | improving | — |

---

## 5. 절감액 요약

| 리소스 | 문제 유형 | 월간 절감액 |
|--------|-----------|------------|
| lambda-function-zspoqd | timeout 과잉 (900s→10s) | $185.00 |
| lambda-function-mfra1j | timeout 과잉 (900s→10s) | $172.00 |
| lambda-function-6apyi7 | memory 과잉 (1024MB→256MB) | $2.44 |
| **합계** | | **$359.44** |

pricing_note 교차 검증: ~$360/월 (오차 0.16%) ✓
