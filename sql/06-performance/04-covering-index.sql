-- Performance 4: Covering index

CREATE INDEX IX_CashTransaction_AccountId_Covering
ON CashTransaction(AccountId)
INCLUDE (TransactionType, Amount);