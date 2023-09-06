Select *
From Tutorial..EmployeeSalary

--Subquery in Select

Select EmployeeID, Salary, (Select Avg(Salary) From Tutorial..EmployeeSalary) as AvgSalForAll
From Tutorial..EmployeeSalary

--Partition By Method
Select EmployeeID, Salary, Avg(Salary) over () as AVgsal
From Tutorial..EmployeeSalary

--Subquery In From 
Select A.EmployeeID, A.AVgsal
From (Select EmployeeID, Salary, Avg(Salary) over () as AVgsal
		From Tutorial..EmployeeSalary
		) as A

--Subquery in Where 
Select *
From Tutorial..EmployeeSalary
Where EmployeeID in (
		Select EmployeeID
		From EmployeeDemographics
		Where Age > 30)
