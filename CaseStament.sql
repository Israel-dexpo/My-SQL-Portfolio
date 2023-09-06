select Dem.EmployeeID, Jobtitle, Salary,
Case 
	when Jobtitle = 'Salesman' then Salary + (Salary * 0.05)
	Else Salary + (Salary * 0.01)
END AS updatedSalary
FROM Tutorial.dbo.EmployeeDemographics as Dem
Join Tutorial.dbo.EmployeeSalary as Sal
 ON Dem.EmployeeID = Sal.EmployeeID
