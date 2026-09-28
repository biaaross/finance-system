CREATE TABLE PortfolioPosition
(
    AccountId INT NOT NULL,
    StockId INT NOT NULL,
    Quantity DECIMAL(18,4) NOT NULL,
    AverageCost DECIMAL(18,4) NOT NULL,

    CONSTRAINT PK_PortfolioPosition
        PRIMARY KEY (AccountId, StockId),

    CONSTRAINT FK_PortfolioPosition_Account
        FOREIGN KEY (AccountId)
        REFERENCES Account(AccountId),

    CONSTRAINT FK_PortfolioPosition_Stock
        FOREIGN KEY (StockId)
        REFERENCES Stock(StockId)
);