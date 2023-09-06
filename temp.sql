 --CREATE TABLE #temp_SalaryModule (
 --EmployeeID int,
 --Jobtitle varchar(100),
 --Salary int)

 --Insert into #temp_SalaryModule
 --Select Top 5*
 --From Tutorial..EmployeeSalary

 --Select *
 --From #temp_SalaryModule

 --Create Table #temp_DemoModule (
 --EmployeeID int, 
 --FirstName varchar(100),
 --LastName varchar(100),
 --Age int, 
 --Gender varchar(6)
 --)
 
 --Insert into #temp_DemoModule
 --Select Top 5*
 --From Tutorial..EmployeeDemographics
 With CTE_Auditor as (
 Select * 
 From #temp_SalaryModule as Sal
 Join #temp_DemoModule as Demo
 On Sal.EmployeeID = Demo.EmployeeID
 )
 Select * 
 From CTE_Auditor