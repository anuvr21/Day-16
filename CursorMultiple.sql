DECLARE @personid INT

DECLARE @salary DECIMAL(10, 2)

DECLARE @total_salary DECIMAL(10, 2) = 0

DECLARE person_cursor CURSOR FOR

SELECT PersonId, Salary

FROM Persons

OPEN person_cursor

FETCH NEXT FROM person_cursor INTO @personid, @salary

WHILE @@FETCH_STATUS = 0

BEGIN

 SET @total_salary = @total_salary + @salary

 FETCH NEXT FROM person_cursor INTO @personid, @salary

END

CLOSE person_cursor

DEALLOCATE person_cursor

SELECT @total_salary AS TotalSalary



