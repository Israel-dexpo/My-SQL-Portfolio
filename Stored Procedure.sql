--CREATE PROCEDURE pro
--As
--Select *
--From Tutorial..EmployeeSalary

--EXEC pro 

CREATE PROCEDURE Temp_Employee5
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
Group by Jobtitle

Select * 
From #Temp_Trader


EXEC Temp_Employee5 @JobTitle = 'Salesman'
