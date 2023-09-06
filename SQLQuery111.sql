/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[Jobtitle]
      ,[Salary]
  FROM [Tutorial].[dbo].[EmployeeSalary]


  Select *
  From EmployeeSalary
  
  Order by Jobtitle