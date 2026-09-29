-- Advanced 3: Stored procedure for account summary

CREATE PROCEDURE GetAccountSummary
    @AccountId INT
AS
BEGIN
    SELECT
        AccountId,
        AccountNo,
        Balance,
        Currency,
        Status
    FROM Account
    WHERE AccountId = @AccountId;
END;