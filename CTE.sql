WITH CTE_SALARY AS 
(Select dem.EmployeeID, LastName, Jobtitle, Gender, Count(Gender) 
Over (Partition by Gender) as totalgender, Salary, Avg(Salary) 
Over (Partition by Salary) as AvgSalary
From Tutorial..EmployeeDemographics dem
Full Outer Join Tutorial..EmployeeSalary sal
 On dem.EmployeeID = sal.EmployeeID
)
 select *
 from CTE_SALARY
 order  by EmployeeID