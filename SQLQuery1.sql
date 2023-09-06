/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[School]
      ,[Gender]
  FROM [Tutorial].[dbo].[EmployeeDemographics]
