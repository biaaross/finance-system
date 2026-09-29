-- Analysis 1: Total balance per customer

SELECT
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName,
    SUM(Account.Balance) AS TotalBalance
FROM Customer
INNER JOIN Account
    ON Customer.CustomerId = Account.CustomerId
GROUP BY
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName
ORDER BY
    SUM(Account.Balance) DESC;