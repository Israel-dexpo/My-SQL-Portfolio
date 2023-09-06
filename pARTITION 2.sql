--Select FirstName, LastName, Gender, Salary, 
--Count(Gender) Over (Partition By Gender) as TotalGender, 
--avg(salary) Over (Partition By Gender) as AvgSal
--From Tutorial..EmployeeDemographics as demo
--Join Tutorial..EmployeeSalary as sal
--	on sal.EmployeeID = demo.EmployeeID
--Where Salary > '46000'


--Select FirstName, LastName, Gender, Count(Gender)
--Over (Partition by Gender) as NumberofEmployees 
--From Tutorial..EmployeeDemographics

With CTE_AvgSalaryCal as (
Select FirstName, LastName, Gender, Salary, 
Count(Gender) Over (Partition By Gender) as TotalGender, 
avg(salary) Over (Partition By Gender) as AvgSal
From Tutorial..EmployeeDemographics as demo
Join Tutorial..EmployeeSalary as sal
	on sal.EmployeeID = demo.EmployeeID
Where Salary > '46000'
)
Select FirstName, Gender, TotalGender, Salary, AvgSal
From CTE_AvgSalaryCal