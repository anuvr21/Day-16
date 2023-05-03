create or alter procedure sp_GetSalary
@personid int,@salary money output
as
begin
select @salary=Salary from Persons where PersonId=@personid
end;

