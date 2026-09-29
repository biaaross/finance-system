-- Query 4: Get account count for each customer

SELECT
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName,
    COUNT(Account.AccountId) AS AccountCount
FROM Customer
INNER JOIN Account
    ON Customer.CustomerId = Account.CustomerId
GROUP BY
    Customer.CustomerId,
    Customer.FirstName,
    Customer.LastName;