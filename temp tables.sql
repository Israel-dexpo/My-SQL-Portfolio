--Create Table #Temp_Employee(
--EmployeeID int, 
--Jobtitle varchar(90),
--Salary int
--)

--Insert into #Temp_Employee
--Select *
--From Tutorial..EmployeeSalary
 
-- Select Avg(Salary)
-- From #Temp_Employee
Drop Table if exists #Temp_Employee2
Create Table #Temp_Employee2 
(JobTitle varchar(50),
Gender varchar(7),
EmployeesPerJob int,
AvgAge int, 
AvgSal int)

Insert into #Temp_Employee2
Select Jobtitle, Gender, Count(Jobtitle), Avg(Age), Avg(Salary) 
From Tutorial..EmployeeDemographics as demo
Join Tutorial..EmployeeSalary as sal
	ON sal.EmployeeID = demo.EmployeeID
Group By Jobtitle, Gender
Select *
From Tutorial..EmployeeSalary
Select * 
From Tutorial..EmployeeDemographics
Select * 
From #Temp_Employee2