/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [Tutorial].[dbo].[EmployeeDemographics]

  Select *
  From Tutorial.dbo.EmployeeDemographics
  WHere Age > 30
  --Group BY Age, Gender, FirstName
  Order BY 4, FirstName