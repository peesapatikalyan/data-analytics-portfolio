-- Simulated query to extract credit score data from a financial system
SELECT
    customer_id,
    age,
    income,
    employment_status,
    credit_history,
    credit_score,
    loan_default
FROM credit_data
WHERE application_date BETWEEN '2022-01-01' AND '2022-12-31';