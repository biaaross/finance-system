CREATE TABLE [Order]
(
    OrderId INT PRIMARY KEY IDENTITY(1,1),
    AccountId INT NOT NULL,
    StockId INT NOT NULL,
    OrderType VARCHAR(10) NOT NULL,
    Quantity DECIMAL(18,4) NOT NULL,
    Price DECIMAL(18,4) NOT NULL,
    OrderDate DATETIME2 NOT NULL DEFAULT GETDATE(),
    Status VARCHAR(20) NOT NULL DEFAULT 'PENDING',

    CONSTRAINT FK_Order_Account
        FOREIGN KEY (AccountId)
        REFERENCES Account(AccountId),

    CONSTRAINT FK_Order_Stock
        FOREIGN KEY (StockId)
        REFERENCES Stock(StockId)
);