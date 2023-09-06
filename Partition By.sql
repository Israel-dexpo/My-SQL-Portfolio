--Select Sal.EmployeeID, Demo.FirstName, Demo.LastName, Sal.Jobtitle, Sal.Salary,
--Case 
--	when Salary < 10000 then Salary + 5000
--	When Jobtitle = 'Receptionist' then Salary - 6000
--	When Jobtitle = 'Engineer' then Salary + 25000
--End As UpgradeForThem
--From Tutorial.dbo.EmployeeDemographics As Demo
--Full Outer Join Tutorial.dbo.EmployeeSalary As Sal
-- On Demo.EmployeeID = Sal.EmployeeID
--Order By Salary Desc

--Update EmployeeSalary
--Set Salary = 37000
--Where Jobtitle = 'Engineer'



Select Sal.EmployeeID, FirstName, Salary, Gender, Count(Gender) Over (Partition By Gender) AS CountOfGender
From Tutorial.dbo.EmployeeSalary Sal
Join Tutorial..EmployeeDemographics Demo
 On Sal.EmployeeID = Demo.EmployeeID

--Insert into Tutorial.dbo.EmployeeDemographics Values 
--(1013, 'Jessica', 'George', 28, 'Female')

-- Delete From Tutorial.dbo.EmployeeDemographics
-- Where EmployeeID = 1013 And Gender = 'Male'