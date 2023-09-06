Drop Table if exists #temp_Employee2
Create Table #temp_Employee2 (
EmployeeNo int,
JobTitle varchar(100),
Salary int, 
SalaryUpdate int
)

Insert into #temp_Employee2
select Dem.EmployeeID, Jobtitle, Salary,
Case 
	when Jobtitle = 'Salesman' then Salary + (Salary * 0.05)
	Else Salary + (Salary * 0.01)
END AS updatedSalary
FROM Tutorial.dbo.EmployeeDemographics as Dem
Join Tutorial.dbo.EmployeeSalary as Sal
 ON Dem.EmployeeID = Sal.EmployeeID
 
Select Max(SalaryUpdate), Max(Salary)
From #temp_Employee2