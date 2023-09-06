/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[Jobtitle]
      ,[Salary]
  FROM [Tutorial].[dbo].[EmployeeSalary]

  Select *
  From Tutorial.dbo.EmployeeDemographics

 

 Select Avg (Salary)
  From Tutorial.dbo.EmployeeDemographics
 Full Outer Join Tutorial.dbo.EmployeeSalary
  on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  Where Jobtitle = 'Salesman'
  
  


 
