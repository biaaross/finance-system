-- Query 5: Classify accounts by balance level

SELECT
    AccountNo,
    Balance,
    CASE
        WHEN Balance >= 200000 THEN 'HIGH'
        WHEN Balance >= 100000 THEN 'MIDDLE'
        ELSE 'LOW'
    END AS BalanceLevel
FROM Account;