-- Performance 1: Index on CashTransaction.AccountId

CREATE INDEX IX_CashTransaction_AccountId
ON CashTransaction(AccountId);