# Health Insurance Claims Analytics (SQL) — Learning Project

## Overview
A hands-on project analyzing a synthetic health insurance claims dataset 
using SQL. Built to practice real analyst skills — filtering, joins, 
aggregation, and business-relevant KPIs.

**Status:** In progress — actively adding queries as I learn.

## Dataset
4 relational tables: `plans`, `members`, `providers`, `claims` (~140 sample claims)

## Tools
SQLite (via sqliteonline.com)

## Queries So Far

### Denial Rate
```sql
SELECT 
    COUNT(*) AS total_claims,
    SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) AS denied_claims,
    ROUND(SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS denial_rate_pct
FROM claims;
```
**Result:** 9.29% denial rate (13 of 140 claims)

### Claims by Status
```sql
SELECT claim_status, COUNT(*)
FROM claims
GROUP BY claim_status;
```
**Result:** Denied: 13, Paid: 109, Pending: 18

### Member Names on Claims (JOIN)
```sql
SELECT members.first_name, members.last_name, claims.service_type, claims.billed_amount
FROM claims
JOIN members ON claims.member_id = members.member_id;
```

## Next Steps
- Average billed amount by service type
- Denial rate by reason
- Provider-level denial analysis

## Why This Project
I work in healthcare corporate patient access and wanted to showcase SQL skills directly relevant to healthcare analytics roles.
