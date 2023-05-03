USE [EmployeeDB]
GO

DECLARE	@return_value int,
		@salary money

EXEC	@return_value = [dbo].[sp_GetSalary]
		@personid = 101,
		@salary = @salary OUTPUT

SELECT	@salary as N'@salary'

SELECT	'Return Value' = @return_value

GO
