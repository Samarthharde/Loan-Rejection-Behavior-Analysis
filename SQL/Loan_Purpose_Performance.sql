CREATE VIEW vw_loan_purpose_performance AS
SELECT 
    Loan_Purpose,
    Loan_Status,
    COUNT(*) AS total
FROM loan_dataset
GROUP BY Loan_Purpose, Loan_Status;