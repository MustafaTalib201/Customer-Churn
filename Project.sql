CREATE SCHEMA raw;
CREATE TABLE raw.telco_customers (
    customerID TEXT PRIMARY KEY,
    gender TEXT,
    SeniorCitizen INT,
    Partner TEXT,
    Dependents TEXT,
    tenure INT,
    PhoneService TEXT,
    MultipleLines TEXT,
    InternetService TEXT,
    OnlineSecurity TEXT,
    OnlineBackup TEXT,
    DeviceProtection TEXT,
    TechSupport TEXT,
    StreamingTV TEXT,
    StreamingMovies TEXT,
    Contract TEXT,
    PaperlessBilling TEXT,
    PaymentMethod TEXT,
    MonthlyCharges NUMERIC,
    TotalCharges NUMERIC,
    Churn TEXT
);
-- Categorical distributions
SELECT gender, COUNT(*) FROM raw.telco_customers GROUP BY gender;
SELECT contract, COUNT(*) FROM raw.telco_customers GROUP BY contract;

-- Numeric summaries
SELECT 
    MIN(tenure), MAX(tenure), AVG(tenure),
    MIN(monthlycharges), MAX(monthlycharges), AVG(monthlycharges),
    MIN(totalcharges), MAX(totalcharges), AVG(totalcharges)
FROM raw.telco_customers;

-- Example: creating tenure category
ALTER TABLE raw.telco_customers
ADD COLUMN tenure_category VARCHAR;

UPDATE raw.telco_customers
SET tenure_category = CASE
    WHEN tenure <= 12 THEN 'New'
    WHEN tenure <= 48 THEN 'Medium'
    ELSE 'Loyal'
END;

-- Churn by contract
SELECT churn, contract, COUNT(*) 
FROM raw.telco_customers
GROUP BY churn, contract;

-- Churn by monthly charges
SELECT 
    CASE 
        WHEN monthlycharges < 35 THEN 'Low'
        WHEN monthlycharges < 70 THEN 'Medium'
        ELSE 'High'
    END AS charge_bucket,
    churn,
    COUNT(*)
FROM raw.telco_customers
GROUP BY charge_bucket, churn;

SELECT 
    customerid,
    monthlycharges * tenure AS cltv,
    churn
FROM raw.telco_customers;

ALTER TABLE raw.telco_customers
ADD COLUMN cltv VARCHAR;
UPDATE raw.telco_customers
SET cltv = monthlycharges * tenure;


SELECT custmin(cltv),max(cltv) from raw.telco_customers;