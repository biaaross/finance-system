CREATE TABLE CashTransaction
(
    TransactionId INT PRIMARY KEY IDENTITY(1,1),
    AccountId INT NOT NULL,
    TransactionType VARCHAR(20) NOT NULL,
    Amount DECIMAL(18,2) NOT NULL,
    TransactionDate DATETIME2 NOT NULL DEFAULT GETDATE(),

    CONSTRAINT FK_CashTransaction_Account
        FOREIGN KEY (AccountId)
        REFERENCES Account(AccountId)
);