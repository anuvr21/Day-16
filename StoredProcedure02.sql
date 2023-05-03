create or alter procedure showPersonWithId (@personId int)
as
begin
	select * from Persons where PersonId=@personId;
end

exec showPersonWithId 101