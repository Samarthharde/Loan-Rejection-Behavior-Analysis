CREATE VIEW vw_approval_drivers AS
SELECT 
    Loan_Status,
    ROUND(AVG(Income),2) AS avg_income,
    ROUND(AVG(Credit_Score),2) AS avg_credit_score,
    ROUND(AVG(Debt_to_Income_Ratio),2) AS avg_dti,
    ROUND(AVG(Income_to_Loan_Ratio),2) AS avg_income_loan_ratio
FROM loan_dataset
GROUP BY Loan_Status;