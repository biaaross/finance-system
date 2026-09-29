SELECT
    AccountNo,
    Balance,
    Currency
FROM Account
WHERE Balance > 100000
ORDER BY Balance DESC;