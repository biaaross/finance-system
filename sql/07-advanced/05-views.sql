-- Advanced 5: Customer account summary view

CREATE VIEW CustomerAccountSummary
AS
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    a.AccountNo,
    a.Balance,
    a.Currency,
    a.Status
FROM Customer AS c
INNER JOIN Account AS a
    ON c.CustomerId = a.CustomerId;