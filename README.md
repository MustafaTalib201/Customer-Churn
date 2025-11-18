🧹 1️⃣ Data Cleaning & Preparation — PostgreSQL & Excel

Imported and structured raw customer data into PostgreSQL

Performed missing value treatment, duplicate removal, and created calculated revenue features

Used SQL queries to filter, group, and standardize key variables like tenure, payment method, and contract type

Validated outputs in Excel before loading into Power BI

📊 2️⃣ Business Intelligence Storytelling — Power BI

Designed an interactive dashboard with multiple pages that explores what drives churn.

Key insights discovered:

🔹 Customers using Fiber Optic services have the highest churn risk
🔹 Monthly charges above $60 strongly correlate with churn
🔹 Most churned users are newer customers (low tenure)
🔹 Majority are not senior citizens — churn isn’t driven by age
🔹 Month-to-Month contracts show extremely high churn
🔹 Customers paying via Electronic Check are most likely to leave

These findings clearly indicate pricing sensitivity + service dissatisfaction in early months + lack of contract lock-in.

I visualized churn patterns across services, demography, revenue, and contract structure — making it easy for business users to act on retention strategies.

🤖 3️⃣ Machine Learning — Python (LightGBM)

To quantify churn risk, I built a predictive model using:

LightGBM classifier with tuned hyperparameters

Train/Test split for performance evaluation

Feature importance analysis to identify the strongest drivers

The model highlighted top predictors:
✔ Contract Type
✔ Monthly Charges
✔ Tenure
✔ Internet Service Type
✔ Payment Method

This gives the company a powerful early-warning churn detection system.
<img width="1335" height="740" alt="image" src="https://github.com/user-attachments/assets/9dabdc7a-c32e-495b-9ec9-e5e84bdcd5b3" />
<img width="1587" height="736" alt="image" src="https://github.com/user-attachments/assets/a19e7280-cfd5-4e9f-9fa2-e6255038f7e3" />
<img width="1583" height="732" alt="image" src="https://github.com/user-attachments/assets/e0d26530-95ab-46b4-b63b-50099daa0b26" />
<img width="1152" height="572" alt="image" src="https://github.com/user-attachments/assets/319b3343-b22a-45b0-abb6-10dbc32495cd" />



🎯 Project Outcomes

📌 Clear business insights to reduce churn through better pricing & long-term contracts
📌 Predictive intelligence to target at-risk customers
📌 Final BI dashboard ties the analysis into a decision-ready product
