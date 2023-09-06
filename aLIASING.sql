Select *
From Tutorial.dbo.EmployeeDemographics AS Demo
Left Outer Join Tutorial.dbo.EmployeeSalary AS Sal
 On Demo.EmployeeID = Sal.EmployeeID
 full Outer Join Tutorial.dbo.WarehouseEmployeeDemographic AS Ware
 On Demo.EmployeeID = Ware.EmployeeID