-- Preview the dataset
SELECT *
FROM telco_churn
LIMIT 10;

-- Count total rows
SELECT COUNT(*) AS total_rows
FROM telco_churn;

-- Churn count by contract type
SELECT 
    Contract,
    Churn,
    COUNT(*) AS total_customers
FROM telco_churn
GROUP BY Contract, Churn
ORDER BY Contract, Churn;

-- Churn rate by contract type
SELECT 
    Contract,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate DESC;

-- Churn rate by payment method
SELECT 
    PaymentMethod,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- Churn rate by internet service
SELECT 
    InternetService,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM telco_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;

-- Average tenure and monthly charges by churn
SELECT 
    Churn,
    ROUND(AVG(tenure), 2) AS avg_tenure,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_churn
GROUP BY Churn;