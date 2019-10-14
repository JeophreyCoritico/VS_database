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

DELETE FROM Assignment_1;
DELETE FROM Office_1;
DELETE FROM Employee_1;

Insert into Office_1 (LocCode, Address, Description) Values
(1, 'test', 'testing'),
(2, 'test2', 'testing2'),
(3, 'test3', 'testing3');

Insert into Employee_1 (StaffID, GivenName, Surname) Values
(1, 'jeff', 'jeoph'),
(2, 'jimbo', 'jim'),
(3, 'jerome', 'jerry');

Insert into Assignment_1 (DateAssigned, LocCode, StaffID) Values
(20191015, 'jeff', 'jeoph'),
(20000922, 'jimbo', 'jim'),
(19170322, 'jerome', 'jerry');