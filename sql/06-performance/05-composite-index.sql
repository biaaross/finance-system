-- Performance 5: Composite index

CREATE INDEX IX_CashTransaction_AccountId_TransactionType
ON CashTransaction(AccountId, TransactionType);