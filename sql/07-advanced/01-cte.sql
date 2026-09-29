-- Advanced 1: Customer balance analysis with CTE

WITH CustomerBalances AS
(
    SELECT
        c.CustomerId,
        c.FirstName,
        c.LastName,
        SUM(a.Balance) AS TotalBalance
    FROM Customer AS c
    INNER JOIN Account AS a
        ON c.CustomerId = a.CustomerId
    GROUP BY
        c.CustomerId,
        c.FirstName,
        c.LastName
)

SELECT
    CustomerId,
    FirstName,
    LastName,
    TotalBalance
FROM CustomerBalances
ORDER BY TotalBalance DESC;