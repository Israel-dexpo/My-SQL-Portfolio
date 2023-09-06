/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [EmployeeID]
--      ,[Jobtitle]
--      ,[Salary]
--  FROM [Tutorial].[dbo].[EmployeeSalary]

SELECT Jobtitle, Salary
FROM EmployeeSalary
 Where Salary > 45000
 Group BY Jobtitle, Salary
 ORDER BY Jobtitle