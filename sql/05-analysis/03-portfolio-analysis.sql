-- Analysis 3: Portfolio analysis

SELECT
    pp.AccountId,
    pp.StockId,
    pp.Quantity,
    pp.AverageCost,
    sp.Price AS CurrentPrice,

    pp.Quantity * pp.AverageCost AS TotalCost,

    pp.Quantity * sp.Price AS MarketValue,

    (pp.Quantity * sp.Price)
        - (pp.Quantity * pp.AverageCost) AS UnrealizedProfitLoss

FROM PortfolioPosition AS pp

INNER JOIN StockPrice AS sp
    ON pp.StockId = sp.StockId

WHERE sp.PriceDate = (
    SELECT MAX(sp2.PriceDate)
    FROM StockPrice AS sp2
    WHERE sp2.StockId = pp.StockId
);