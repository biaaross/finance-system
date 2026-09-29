-- Advanced 4: Function for balance classification

CREATE FUNCTION dbo.GetBalanceLevel
(
    @Balance DECIMAL(18,2)
)
RETURNS VARCHAR(20)
AS
BEGIN

    DECLARE @BalanceLevel VARCHAR(20);

    SET @BalanceLevel =
        CASE
            WHEN @Balance >= 200000 THEN 'Yüksek'
            WHEN @Balance >= 100000 THEN 'Orta'
            ELSE 'Düşük'
        END;

    RETURN @BalanceLevel;

END;