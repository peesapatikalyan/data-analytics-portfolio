-- SQL Query to extract high-risk interactions
SELECT
    interaction_id,
    customer_id,
    channel,
    response_time_sec,
    issue_type,
    sentiment_score
FROM customer_interactions
WHERE sentiment_score < -1.0 OR response_time_sec > 1000;