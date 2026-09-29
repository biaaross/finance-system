-- Advanced 6: Automatically update account balance

CREATE TRIGGER trg_UpdateAccountBalance
ON CashTransaction
AFTER INSERT
AS
BEGIN

    UPDATE a
    SET a.Balance =
        a.Balance +
        CASE
            WHEN i.TransactionType = 'DEPOSIT' THEN i.Amount
            WHEN i.TransactionType = 'WITHDRAW' THEN -i.Amount
            ELSE 0
        END

    FROM Account AS a
    INNER JOIN inserted AS i
        ON a.AccountId = i.AccountId;

END;