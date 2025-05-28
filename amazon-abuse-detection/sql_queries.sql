-- Sample SQL Queries for Amazon Escalation Analytics

-- 1. Get escalation cases from Redshift
SELECT
    case_id,
    customer_id,
    region,
    escalation_type,
    escalation_text,
    created_at
FROM amazon_escalations
WHERE created_at BETWEEN '2021-11-01' AND '2021-11-30';

-- 2. Join escalation data with delivery data
SELECT
    e.case_id,
    e.customer_id,
    e.region,
    e.escalation_type,
    e.escalation_text,
    d.delivery_id,
    d.ftds_flag,
    d.delivery_time
FROM amazon_escalations e
JOIN amazon_deliveries d
    ON e.customer_id = d.customer_id
WHERE e.created_at BETWEEN '2021-11-01' AND '2021-11-30';

-- 3. Summarize abuse rates by region
SELECT
    region,
    COUNT(*) AS total_escalations,
    SUM(CASE WHEN is_abusive = 1 THEN 1 ELSE 0 END) AS abusive_cases
FROM amazon_escalation_insights
GROUP BY region;