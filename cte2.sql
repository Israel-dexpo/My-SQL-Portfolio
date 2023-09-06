with CTE_EmployeeData as (Select dem.EmployeeID, FirstName, LastName, Gender, 
Salary, Age, Count(Gender) Over (Partition by Gender) as TotalGender, 
Avg(Age) Over (Partition by Gender) as AverageAgebyGender
From Tutorial..EmployeeDemographics as dem
Full Outer Join Tutorial..EmployeeSalary  as sal
On dem.EmployeeID = sal.EmployeeID
)
Select *
From CTE_EmployeeData
