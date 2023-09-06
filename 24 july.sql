Select  JobTitle, Salary, Gender, Count(Gender) Over (Partition by Gender) as TotalGender
--Case
--	When JobTitle = 'Salesman'  then Salary + (Salary * 0.1)
--	When JobTitle = 'HR'  then Salary + (Salary * 0.2)
--	When JobTitle = 'Accountant'  then Salary + (Salary * 0.01)
--	Else Salary + (Salary * 0.001)
--End as SalaryAfterRaise
from Tutorial..EmployeeDemographics as dem
full outer Join Tutorial..EmployeeSalary as sal
On sal.EmployeeID = dem.EmployeeID
Group by Jobtitle, Salary, Gender

