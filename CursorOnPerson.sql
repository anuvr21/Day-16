DECLARE @personid INT;
DECLARE person_cursor CURSOR
FOR
SELECT PersonId FROM Persons ORDER BY PersonId;
OPEN person_cursor;
FETCH NEXT FROM person_cursor INTO @personid;
CLOSE person_cursor
DEALLOCATE person_cursor