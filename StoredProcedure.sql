CREATE PROCEDURE sp_printDate AS
BEGIN
SELECT getDate();
END;

EXEC sp_printDate