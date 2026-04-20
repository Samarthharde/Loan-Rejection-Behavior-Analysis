CREATE VIEW vw_financial_strength AS
SELECT 
    Applicant_ID,
    Income,
    Loan_Amount,
    Income_to_Loan_Ratio,
    Debt_to_Income_Ratio,
    CASE 
        WHEN Income_to_Loan_Ratio > 2 THEN 'Strong'
        WHEN Income_to_Loan_Ratio > 1 THEN 'Moderate'
        ELSE 'Weak'
    END AS Financial_Strength,
    Loan_Status
FROM loan_dataset;