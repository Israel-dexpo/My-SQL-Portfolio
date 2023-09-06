/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Ename]
      ,[Salary]
  FROM [Tutorial].[dbo].[EmployeesData]

  Select *
  From Tutorial.dbo.EmployeesData
  Where Salary > 21000
  Order by Ename DESC
  
  
