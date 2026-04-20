CREATE VIEW vw_master_insights AS
SELECT 
    Loan_Status,
    COUNT(*) AS total_applications,
    ROUND(AVG(Income),2) AS avg_income,
    ROUND(AVG(Credit_Score),2) AS avg_credit_score,
    ROUND(AVG(Debt_to_Income_Ratio),2) AS avg_dti,
    ROUND(AVG(Income_to_Loan_Ratio),2) AS avg_income_loan_ratio,
    SUM(CASE WHEN High_Risk = 1 THEN 1 ELSE 0 END) AS high_risk_count
FROM loan_dataset
GROUP BY Loan_Status;