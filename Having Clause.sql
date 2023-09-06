select Jobtitle, Count(Jobtitle),Avg(Salary) AS AvgSalary
FROM Tutorial.dbo.EmployeeDemographics
Join Tutorial.dbo.EmployeeSalary 
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHere Jobtitle <> ' '
Group By Jobtitle
Having Count(Jobtitle) > 1
Order By Jobtitle DESC
