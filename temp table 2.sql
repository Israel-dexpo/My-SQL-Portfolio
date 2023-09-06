Create Table #Temp_Employee3 
(JobTitle varchar(50),
Gender varchar(7),
EmployeesPerJob int,
AvgAge int, 
AvgSal int)

Insert into #Temp_Employee3
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
From #Temp_Employee3