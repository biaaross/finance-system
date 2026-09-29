-- Performance 3: Query performance analysis

SET STATISTICS IO ON;

SELECT *
FROM CashTransaction
WHERE AccountId = 3;

SET STATISTICS IO OFF;