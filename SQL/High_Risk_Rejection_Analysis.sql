CREATE VIEW vw_high_risk_rejections AS
SELECT 
    COUNT(*) AS total_high_risk,
    SUM(CASE WHEN Loan_Status = 'Rejected' THEN 1 ELSE 0 END) AS rejected_count
FROM loan_dataset
WHERE High_Risk = 1;