USE Loan_Analysis;
SHOW TABLES;
CREATE VIEW vw_customer_risk_profile AS
SELECT 
    Applicant_ID,
    Income,
    Credit_Score,
    Debt_to_Income_Ratio,
    Credit_Category,
    debt_burden,
    Risk_Score,
    High_Risk,
    Loan_Status
FROM loan_dataset;