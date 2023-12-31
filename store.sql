USE [Tutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee5]    Script Date: 7/28/2023 11:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee5]
@JobTitle nvarchar(100)
As 
Create Table #Temp_Trader (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

Insert into #Temp_Trader
Select Jobtitle, Count(Jobtitle), Avg(Age), Avg(Salary)
From Tutorial..EmployeeSalary as Sal
Join Tutorial..EmployeeDemographics as Demo
On Sal.EmployeeID = Demo.EmployeeID
Where Jobtitle = @JobTitle
Group by Jobtitle


Select * 
From #Temp_Trader
