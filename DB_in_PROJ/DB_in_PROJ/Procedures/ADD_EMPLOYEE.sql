CREATE PROCEDURE [dbo].[ADD_EMPLOYEE]
@StaffID int,
@GivenName nvarchar(50),
@Surname nvarchar(50)
as
insert into Employee (StaffID, GivenName, Surname)
values (@StaffID, @GivenName, @Surname)
return 0;