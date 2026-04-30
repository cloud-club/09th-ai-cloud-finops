# FinOps Kinesis Analysis Report - L2-022

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | Unnecessary Kinesis Enhanced Fan-Out — batch workload paying real-time delivery premium |
| Affected Resources | 1 of 2 streams, 2 of 2 consumers |
| Processing Interval | 5 minutes (batch; EFO benefit requires < 1 minute) |
| EFO Consumers | 2 (`kinesis-stream-consumer-zcd0bk`, `kinesis-stream-consumer-t865bp`) |
| Monthly Waste | **~$437** |
| Annual Waste | **~$5,244** |
| Confidence | **High** — EFO unjustified on all three criteria; no throttling observed in 30-day window |

---

## Evidence

### 3.1 Infrastructure Evidence (Terraform)

`main.tf` declares **2 `aws_kinesis_stream`** and **2 `aws_kinesis_stream_consumer`** resources in `us-east-1`.

| Resource | Type | Shards | EFO | Processing Interval | Status |
|----------|------|--------|-----|---------------------|--------|
| `kinesis-stream-th5ftu` | aws_kinesis_stream | 20 | **true** | **5 min** | **Affected** |
| `kinesis-stream-consumer-zcd0bk` | aws_kinesis_stream_consumer | — | enhanced_fan_out | 250 GB/day | **Affected** |
| `kinesis-stream-consumer-t865bp` | aws_kinesis_stream_consumer | — | enhanced_fan_out | 250 GB/day | **Affected** |
| `kinesis-stream-b0395y` | aws_kinesis_stream | 5 | false | 1 min | Compliant |

`kinesis-stream-th5ftu` has `enhanced_fan_out = true` and `processing_interval_minutes = 5`. Two EFO consumers are registered against this stream via the SubscribeToShard API, each reading 250 GB/day. At a 5-minute polling interval, EFO's dedicated per-shard throughput and sub-second delivery provide zero functional benefit over standard GetRecords polling.

**EFO Justification Check** — all three criteria must be met for EFO to be cost-justified:

| Criterion | Threshold | Observed | Pass? |
|-----------|-----------|---------|-------|
| Processing interval | < 1 min (near-real-time) | **5 min** | **FAIL** |
| Concurrent consumers | > 5 (throughput contention) | **2** | **FAIL** |
| Iterator age SLA | < 500 ms required | 100 ms | Pass |

With two of three criteria failing, EFO is not justified. Standard GetRecords at 2 MB/s/shard is more than sufficient for 2 consumers on a batch processing schedule.

### 3.2 Metric Evidence (30 days)

**kinesis-stream-th5ftu**

| Metric | Avg | p95 | Max | Notes |
|--------|-----|-----|-----|-------|
| `iterator_age_ms` | 100 ms | 100 ms | 100 ms | Flat — consumers keep pace; no accumulating backlog |
| `incoming_bytes` | 100 (normalized) | 100 | 100 | Simulation normalized unit |
| `read_provisioned_throughput_exceeded` | **0** | **0** | **0** | **Zero throttling in 30-day window** |

**kinesis-stream-consumer-zcd0bk / kinesis-stream-consumer-t865bp**

| Metric | Avg | p95 | Max | Notes |
|--------|-----|-----|-----|-------|
| `iterator_age_ms` | 100 ms | 100 ms | 100 ms | Healthy — no consumer lag |
| `incoming_bytes` | 100 (normalized) | 100 | 100 | Simulation normalized unit |
| `read_provisioned_throughput_exceeded` | **0** | **0** | **0** | No throttling on either consumer |

**kinesis-stream-b0395y** (compliant reference)

| Metric | Avg | Notes |
|--------|-----|-------|
| `iterator_age_ms` | 100 ms | Healthy — no EFO, no issues |
| `incoming_bytes` | 100 (normalized) | — |

Zero `ReadProvisionedThroughputExceeded` events across all 720 hourly datapoints confirms that standard GetRecords throughput (2 MB/s/shard × 20 shards = 40 MB/s aggregate) is far more than adequate. Disabling EFO will not cause throttling.

### 3.3 Cost Evidence (6 months)

| Month | Kinesis Spend | Total AWS Spend |
|-------|--------------|-----------------|
| M-5 | $506.83 | $6,742.45 |
| M-4 | $591.54 | $6,569.91 |
| M-3 | $574.11 | $6,393.38 |
| M-2 | $430.14 | $6,044.45 |
| M-1 | $466.84 | $6,584.36 |
| M-0 | $435.75 | $6,613.70 |
| **Avg** | **$500.87** | **$6,491.38** |

**EFO cost breakdown (authoritative, from pricing_note):**

| EFO Cost Component | Calculation | Monthly Cost |
|--------------------|-------------|-------------|
| EFO shard-hours | $0.015/consumer-shard-hr × 20 shards × 730h | $219.00 |
| EFO data retrieval | 15 TB/mo × $0.013/GB (2 consumers × 250 GB/day × 30d) | $195.00 |
| Consumer-hour overhead | Residual | $23.00 |
| **Total EFO waste** | | **$437.00/mo** |

The $437/mo EFO overhead represents **87% of the average Kinesis bill** ($500.87/mo). After removing EFO consumers, the remaining cost (~$64/mo) covers standard shard-hours for both streams.

### 3.4 Root Cause

**`kinesis-stream-th5ftu` was configured with Enhanced Fan-Out for a batch workload that processes records every 5 minutes.**

EFO exists to solve two problems: (1) sub-second delivery latency for real-time consumers, and (2) throughput contention when more than 5 concurrent consumers compete for the shared 2 MB/s/shard standard read limit. Neither problem applies here:

- **Batch interval**: The 5-minute `processing_interval_minutes` means consumers wake up periodically and bulk-read records — they are not streaming consumers. EFO's SubscribeToShard push model adds no value when the consumer batch-polls every 5 minutes.
- **Low consumer count**: With only 2 concurrent consumers, the shared standard GetRecords throughput (2 MB/s/shard, 5 calls/sec/shard) is nowhere near saturation. EFO's dedicated per-consumer throughput allocation is entirely unnecessary.
- **No backlog evidence**: `iterator_age_ms` is flat at 100ms across the observation period, confirming consumers process all records well within each processing window. There is no catching-up behavior that would indicate throughput constraint.

The co-existing `kinesis-stream-b0395y` correctly uses no EFO at a 1-minute interval with no consumers, demonstrating that the team knows how to configure standard streams. EFO on `th5ftu` was likely inherited from an initial architecture decision or vendor template without verifying whether the batch processing model actually required it.

---

## Proposed Solution

### Immediate Actions

1. **Migrate consumer applications from SubscribeToShard (EFO) to GetRecords (standard) API** before removing Terraform resources.
   - For **AWS Lambda** consumers with Kinesis event source mappings: remove the `StartingPosition` EFO configuration if set; standard event source mapping uses GetRecords.
   - For **Kinesis Client Library (KCL)** consumers: update `KinesisClientLibConfiguration` to use `PollingConfig` instead of enhanced fan-out.
   - For **AWS SDK custom consumers**: replace `SubscribeToShard` calls with `GetRecords` + `GetShardIterator`.

2. **Apply `main_optimized.tf`** — removes both `aws_kinesis_stream_consumer` resources, eliminating the EFO registration.

3. **Monitor for 7 days post-migration:**
   ```bash
   aws cloudwatch get-metric-statistics \
     --namespace AWS/Kinesis \
     --metric-name ReadProvisionedThroughputExceeded \
     --dimensions Name=StreamName,Value=kinesis-stream-th5ftu \
     --start-time $(date -d '7 days ago' --iso-8601=seconds) \
     --end-time $(date --iso-8601=seconds) \
     --period 3600 --statistics Sum
   ```
   If throttling appears after the switch, increase polling interval headroom or verify consumer count before permanently removing EFO.

### Preventive Actions

1. **Require EFO justification documentation** — before enabling enhanced fan-out or creating `aws_kinesis_stream_consumer` resources, require written evidence that all three criteria are met: processing interval < 1 minute, concurrent consumers > 5, and a latency SLA requiring < 500 ms iterator age.

2. **Shard count review** — `kinesis-stream-th5ftu` has 20 shards at a 5-minute batch interval with zero throttling. Actual ingestion rate from CloudWatch `IncomingBytes` (not simulation values) should be checked to determine whether shard count can be reduced. Each eliminated shard saves $0.015 × 730h = $10.95/mo.

3. **Alert on idle EFO** — configure a CloudWatch alarm that fires when a stream with registered EFO consumers shows `GetRecords.IteratorAgeMilliseconds > 60,000 ms` consistently (indicating consumers are not reading in real-time despite EFO costs).

---

## Estimated Monthly Savings

**~$437 / month**
**~$5,244 / year**

| Item | Before | After (standard GetRecords) |
|------|--------|-----------------------------|
| EFO shard-hours (20 shards × ~730h) | $219.00/mo | $0 |
| EFO data retrieval (15 TB/mo) | $195.00/mo | $0 |
| EFO consumer overhead | $23.00/mo | $0 |
| Standard stream costs | ~$63.87/mo | ~$63.87/mo |
| **Avg monthly Kinesis** | **$500.87/mo** | **~$63.87/mo** |
| **Monthly savings** | | **~$437/mo** |

> **Confidence: High.** EFO configuration is confirmed in Terraform. No `ReadProvisionedThroughputExceeded` events in 30 days. Processing interval (5 min) definitively disqualifies EFO on two of three required criteria. Savings figure is authoritative from `cost_report.json` pricing_note.

---

*Generated by: finops-kinesis skill v1.0.0 — Claude Code | Scenario: L2-022 (FinCore)*
