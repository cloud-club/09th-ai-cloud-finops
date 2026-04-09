**Problem identified**

- 8 out of 10 CloudWatch log groups have `retention_days=0` (logs stored forever)
- ~60GB/month ingestion with no expiry → ~$2/month cumulative storage cost per group member

**Root cause analysis**

- Metrics show stable 100GB/day ingestion (720 data points)
- Cost report shows $189/month CloudWatch spend vs $144/month with retention policies
- 4.8TB accumulated storage costs ($144/month) vs unbounded growth

**Recommended actions**

1. Set retention_days=90 for 8 problematic log groups
2. Remove 2 existing 90-day retention groups (tv4ha6, xy0p7b)
3. Implement log retention policy automation

**Monthly savings estimate**

- Current: $189/month CloudWatch
- Optimized: $144/month (4.8TB storage × $0.03/GB)
- **Savings: $45/month**

**Full analysis summary**

MedCloud's CloudWatch log groups are incurring $45/month savings potential by implementing retention policies. 8 out of 10 log groups are storing logs indefinitely, leading to unbounded storage costs.  Implementing 90-day retention policies will reduce storage costs by 24% while maintaining necessary log retention periods.