-- Advanced 2: Account ranking by balance

SELECT
    CustomerId,
    AccountNo,
    Balance,

    ROW_NUMBER() OVER (
        PARTITION BY CustomerId
        ORDER BY Balance DESC
    ) AS BalanceRank

FROM Account;