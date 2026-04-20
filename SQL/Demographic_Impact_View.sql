CREATE VIEW vw_demographic_analysis AS
SELECT 
    Gender,
    Marital_Status,
    Age_Group,
    Loan_Status,
    COUNT(*) AS total
FROM loan_dataset
GROUP BY Gender, Marital_Status, Age_Group, Loan_Status;