/****** Script for SelectTopNRows command from SSMS  ******/
--Select FirstName, LastName, Age, 
--Case 
--	When Age >30 Then 'Old'
--	When Age < 30 Then 'Kekere'
--	When Age = 30 Then 'Welcome'
--END As AgeDeterminant
--from Tutorial.dbo.EmployeeDemographics
-- Join Tutorial.dbo.EmployeeSalary
--  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From Tutorial.dbo.EmployeeDemographics

--Update Tutorial.dbo.EmployeeDemographics
--SET LastName = 'Franklin' 
--Where FirstName = 'Adele'

Update Tutorial.dbo.EmployeeDemographics
Set FirstName = 'Jessica',LastName = 'Bieber'
Where EmployeeID = 1013
