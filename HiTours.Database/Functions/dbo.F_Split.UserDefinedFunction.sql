
CREATE FUNCTION [dbo].[F_Split] (@InputString VARCHAR(MAX),@Separator VARCHAR(MAX))
RETURNS @ValueTable TABLE (Value VARCHAR(MAX))
AS
BEGIN

    DECLARE @SeparatorIndex INT, @TotalLength INT, @StartIndex INT, @Value VARCHAR(MAX)
    SET @TotalLength=LEN(@InputString)
    SET @StartIndex = 1

    IF @Separator IS NULL RETURN

    WHILE @StartIndex <= @TotalLength
    BEGIN
	-- DO NOT MAKE CHANGES HERE, CONTACT SOURAB TO MAKE ANY CHANGES TO THIS FUNCTION
        SET @SeparatorIndex = CHARINDEX(''+@Separator, @InputString, @StartIndex)
        IF @SeparatorIndex > 0
        BEGIN
            SET @Value = SUBSTRING(@InputString, @StartIndex, @SeparatorIndex-@StartIndex)
            SET @StartIndex = @SeparatorIndex + 1
        END
        ELSE
        BEGIN
            Set @Value = SUBSTRING(@InputString, @StartIndex, @TotalLength-@StartIndex+1)
            SET @StartIndex = @TotalLength+1
        END
        INSERT INTO @ValueTable
        (Value)
        VALUES
        (@Value)
    END

    RETURN
END

GO
