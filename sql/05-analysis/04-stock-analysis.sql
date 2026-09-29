-- Analysis 4: Stock price analysis

SELECT
    s.StockId,
    s.Symbol,
    s.CompanyName,

    AVG(sp.Price) AS AveragePrice,
    MAX(sp.Price) AS HighestPrice,
    MIN(sp.Price) AS LowestPrice,
    SUM(sp.Volume) AS TotalVolume

FROM Stock AS s

INNER JOIN StockPrice AS sp
    ON s.StockId = sp.StockId

GROUP BY
    s.StockId,
    s.Symbol,
    s.CompanyName

ORDER BY
    AveragePrice DESC;