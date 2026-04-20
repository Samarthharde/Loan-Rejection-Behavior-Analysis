CREATE VIEW vw_risk_matrix AS
SELECT 
    Risk_Score,
    High_Risk,
    Loan_Status,
    COUNT(*) AS total
FROM loan_dataset
GROUP BY Risk_Score, High_Risk, Loan_Status;