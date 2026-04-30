# FinOps ECS/Fargate Analysis Report - L2-016

## Problem Identification

| Category | Details |
|----------|---------|
| Waste Type | Fargate task CPU and memory over-provisioning — 4 vCPU / 8 GB tasks running at ~12% CPU, ~18% memory |
| Affected Resources | 8 of 10 services (40 tasks), all FARGATE |
| Provisioned per Task | 4096 vCPU units (4 vCPU) / 8192 MB |
| Actual Usage per Task | ~820 vCPU units (p95) / ~2048 MB (p95) |
| Monthly Waste | **~$1,050** |
| Annual Waste | **~$12,600** |
| Confidence | **High** — 30-day metric window confirms chronic under-utilization; cost_report provides authoritative savings estimate |

---

## Evidence

### 3.1 Infrastructure Evidence (Terraform)

`main.tf` declares **10 `aws_ecs_service`** and **10 `aws_ecs_task_definition`** resources, all using `launch_type = "FARGATE"` and `platform_version = "1.4.0"`.

| Service | CPU Units | Memory MB | desired_count | CPU avg% | Status |
|---------|-----------|-----------|---------------|---------|--------|
| `ecs-service-5se6xo` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-rt6k3m` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-cw8wse` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-1tp21o` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-m0qag3` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-fzfa3w` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-ph46sz` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-8w2rd8` | **4096** | **8192** | 5 | **12%** | **Affected** |
| `ecs-service-0anf0r` | 1024 | 2048 | 3 | 68% | Compliant |
| `ecs-service-uruv7w` | 1024 | 2048 | 3 | 65% | Compliant |

All 8 affected services have identical task configurations: 4 vCPU / 8 GB per task. No `aws_appautoscaling_target` or `aws_appautoscaling_policy` resources are defined — desired_count is static. The two compliant services (`0anf0r`, `uruv7w`) already run the right-sized 1 vCPU / 2 GB configuration and serve as the in-cluster reference for appropriate sizing.

### 3.2 Metric Evidence (30 days)

**Affected services — representative sample (all 8 show the same utilization pattern)**

| Metric | Avg | p95 | Max | Provisioned | p95 Utilization |
|--------|-----|-----|-----|-------------|-----------------|
| `cpu_percent` | **~12%** | **~20%** | ~26% | 4096 units | **p95 = 819 units** |
| `memory_percent` | **~18%** | **~25%** | ~37% | 8192 MB | **p95 = 2048 MB** |

**Compliant services — `0anf0r` and `uruv7w`**

| Metric | Avg | p95 | Max | Provisioned |
|--------|-----|-----|-----|-------------|
| `cpu_percent` | ~67% | ~89% | 100% | 1024 units |
| `memory_percent` | ~66% | ~83% | ~96% | 2048 MB |

The contrast is stark. The 8 affected services run at 12% average CPU utilization of their provisioned 4 vCPU. The 2 compliant services — which already have 1 vCPU / 2 GB — run at 65–68% average CPU. The two groups share the same cluster, confirming the affected services are architecturally identical workloads running in needlessly large task sizes.

**Safety check:**
- CPU max ~26% — well below the 80% safety block threshold. Reduction is safe.
- Memory max ~37% of 8192 MB = 3063 MB — exceeds the 2048 MB target. Monitor for OOMKilled events post-deployment and increase to 3072 MB if any occur. (See Immediate Actions.)

### 3.3 Cost Evidence (6 months)

| Month | ECS Spend | Fargate Spend | Combined | Total AWS Spend |
|-------|-----------|--------------|----------|-----------------|
| M-5 | $782.90 | $636.76 | $1,419.66 | $9,615.73 |
| M-4 | $637.00 | $555.64 | $1,192.64 | $10,329.89 |
| M-3 | $767.02 | $608.85 | $1,375.87 | $10,336.55 |
| M-2 | $675.50 | $683.09 | $1,358.59 | $11,013.87 |
| M-1 | $705.75 | $744.82 | $1,450.57 | $10,728.73 |
| M-0 | $652.60 | $671.43 | $1,324.03 | $10,253.56 |
| **Avg** | **$703.46** | **$650.10** | **$1,353.56** | **$10,379.72** |

**Authoritative waste estimate (from pricing_note):**

| Component | Before | After |
|-----------|--------|-------|
| Per-task vCPU-hour | 4 vCPU × $0.04048 × 730h = $118.20 | 1 vCPU × $0.04048 × 730h = $29.55 |
| Per-task GB-hour | 8 GB × $0.004445 × 730h = $25.96 | 2 GB × $0.004445 × 730h = $6.49 |
| **Per-task/month** | **$144.16** | **$36.04** |
| 8 services × 5 tasks = 40 tasks | $5,766/mo (list) | $1,442/mo (list) |
| **Effective combined spend** | **~$1,354/mo** | **~$304/mo** |
| **Monthly savings** | | **~$1,050/mo** |

> Effective spend is significantly below list price — Compute Savings Plans or Reserved Capacity are likely in effect for AppForge. The authoritative $1,050/mo saving is from the `cost_report.json` pricing_note and reflects the actual effective rate, not the list-price calculation.

### 3.4 Root Cause

**8 services were provisioned at 4 vCPU / 8 GB but the actual workload requires only ~1 vCPU / 2 GB.**

The affected services are identical NGINX-based containers (all using `nginx:latest`) likely set up from a shared infrastructure template that was sized for a high-traffic launch estimate. That estimate was never revised after the services settled at their actual traffic level. The 2 compliant services (`0anf0r`, `uruv7w`) — provisioned at 1 vCPU / 2 GB — demonstrate that this cluster was already corrected for some services, but the larger group of 8 remained at the over-provisioned spec.

Fargate charges for the full provisioned CPU and memory allocation, not actual consumption. At 12% average CPU utilization, 88% of the provisioned vCPU-hours are billed but never used. This pattern has persisted for the entire 6-month cost observation window.

---

## Proposed Solution

### Immediate Actions

1. **Verify no OOMKilled events at 2 GB** — before applying, run a load test in a staging environment at the expected peak traffic level to confirm no memory pressure at 2048 MB. If OOMKilled events appear, use 3072 MB (3 GB) instead — still a 62.5% memory reduction from 8 GB.

2. **Apply `main_optimized.tf`** — reduces all 8 affected task definitions from 4096/8192 to 1024/2048. Deploy using rolling update (ECS default):
   - `minimumHealthyPercent = 100`, `maximumPercent = 200` to ensure zero-downtime rollout

3. **Monitor for 7 days post-deployment:**
   ```bash
   # Watch for CPU throttling
   aws cloudwatch get-metric-statistics \
     --namespace AWS/ECS \
     --metric-name CPUUtilization \
     --dimensions Name=ServiceName,Value=ecs-service-5se6xo Name=ClusterName,Value=main \
     --start-time $(date -d '7 days ago' --iso-8601=seconds) \
     --end-time $(date --iso-8601=seconds) \
     --period 3600 --statistics Average,Maximum
   ```
   Also check Container Insights for `OOMKilled` events across all 8 services. If CPU sustains > 85% or any OOMKilled event occurs, roll back the task definition to the previous revision.

### Preventive Actions

1. **Add ECS Auto Scaling** — all 10 services use static `desired_count` with no scaling policy. Add Target Tracking on `ECSServiceAverageCPUUtilization` at 65% to reduce task count during off-peak hours and scale out before CPU saturation.

2. **Alert on sustained low CPU** — set a CloudWatch alarm that fires when `ECSServiceAverageCPUUtilization < 15%` for 7 consecutive days, triggering a FinOps review.

3. **Pin a task sizing standard** — enforce a Terraform policy that requires `cpu` and `memory` to be reviewed against CloudWatch utilization data before setting values above `1024`/`2048` for new services. Use the 1 vCPU / 2 GB compliant services as the baseline reference.

4. **Set `platform_version = "LATEST"`** — all 10 services are pinned to `1.4.0`. Update to `"LATEST"` to receive security patches automatically without manual version tracking.

---

## Estimated Monthly Savings

**~$1,050 / month**
**~$12,600 / year**

| Item | Before | After (1 vCPU / 2 GB per task) |
|------|--------|---------------------------------|
| 8 services × 5 tasks = 40 tasks | ~$1,354/mo combined | ~$304/mo |
| 2 compliant services (unchanged) | included | included |
| **Monthly savings** | | **~$1,050/mo** |

> **Confidence: High.** 30-day CPU and memory metrics confirm < 12% average and < 26% max utilization on all 8 affected services. Authoritative savings from `cost_report.json` pricing_note. Memory max spike (37%) warrants OOMKilled monitoring post-deployment — if needed, increase to 3072 MB with ~$840/mo savings instead of $1,050/mo.

---

*Generated by: finops-ecs skill v1.0.0 — Claude Code | Scenario: L2-016 (AppForge)*
