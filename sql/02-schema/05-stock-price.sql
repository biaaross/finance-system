CREATE TABLE StockPrice
(
    PriceId INT PRIMARY KEY IDENTITY(1,1),
    StockId INT NOT NULL,
    Price DECIMAL(18,4) NOT NULL,
    Volume BIGINT,
    PriceDate DATETIME2 NOT NULL,

    CONSTRAINT FK_StockPrice_Stock
        FOREIGN KEY (StockId)
        REFERENCES Stock(StockId)
);