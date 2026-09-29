SELECT
    c.FirstName,
    c.LastName,
    a.AccountNo,
    a.Balance,
    a.Currency
FROM Customer AS c
INNER JOIN Account AS a
    ON c.CustomerId = a.CustomerId;
