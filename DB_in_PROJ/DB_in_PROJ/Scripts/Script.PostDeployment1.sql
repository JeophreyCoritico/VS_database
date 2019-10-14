/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE FROM Assignment;
DELETE FROM Office;
DELETE FROM Employee;

Insert into Office (LocCode, Address, Description) Values
(1, 'test', 'testing'),
(2, 'test2', 'testing2'),
(3, 'test3', 'testing3');

Insert into Employee (StaffID, GivenName, Surname) Values
(1, 'jeff', 'jeoph'),
(2, 'jimbo', 'jim'),
(3, 'jerome', 'jerry');

Insert into Assignment (DateAssigned, LocCode, StaffID) Values
('2019-10-15', 1, 1),
('2000-09-22', 2, 2),
('1917-03-22', 3, 3);