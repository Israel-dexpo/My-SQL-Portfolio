/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (1000) [EmployeeID]
--      ,[FirstName]
--      ,[LastName]
--      ,[Age]
--      ,[Gender]
--  FROM [Tutorial].[dbo].[EmployeeDemographics]

  --Select FirstName, LastName, Gender, Age, COunt(Gender)
  --From Tutorial.dbo.EmployeeDemographics
  --Where Age <= 30
  --Group BY FirstName, LastName, Gender, Age
  --Order BY Gender ASC

  Select LastName, Age, Gender
  From Tutorial.dbo.EmployeeDemographics
  Group BY LastName, Age, Gender
  Order By LastName, Age ASC, Gender DESC
 
 