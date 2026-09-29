-- Query 6: Accounts with high transaction volume

SELECT
    AccountId,
    SUM(Amount) AS TotalTransactionAmount
FROM CashTransaction
GROUP BY AccountId
HAVING SUM(Amount) > 100000;