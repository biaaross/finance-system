-- Analysis 2: Cash flow analysis per account

SELECT
    AccountId,

    SUM(
        CASE
            WHEN TransactionType = 'DEPOSIT' THEN Amount
            ELSE 0
        END
    ) AS TotalDeposit,

    SUM(
        CASE
            WHEN TransactionType = 'WITHDRAW' THEN Amount
            ELSE 0
        END
    ) AS TotalWithdraw,

    SUM(
        CASE
            WHEN TransactionType = 'DEPOSIT' THEN Amount
            WHEN TransactionType = 'WITHDRAW' THEN -Amount
            ELSE 0
        END
    ) AS NetCashFlow

FROM CashTransaction
GROUP BY AccountId;