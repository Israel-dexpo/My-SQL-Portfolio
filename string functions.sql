--CREATE TABLE EMPLOYEE_ERRORS (
--ID int, 
--FirstName varchar(100),
--LastName varchar(100)
--)

--Insert into EMPLOYEE_ERRORS VALUES
--(1001, ' Gbenga ', 'Cool '),
--(1002, ' FireLord ', 'Zukoo-Ozai'),
--(1003, 'Freshyo ', ' Fryo')

select *
From EMPLOYEE_ERRORS

--Trim, LTRIM, RTRIM
select FirstName, Trim(FirstName) as NameTrim
From EMPLOYEE_ERRORS

select FirstName, lTrim(FirstName) as NameTrim
From EMPLOYEE_ERRORS

select FirstName, RTrim(FirstName) as NameTrim
From EMPLOYEE_ERRORS

--REPLACE
Select REPLACE(LastName, '-Ozai', '') as Removed
From Tutorial..EMPLOYEE_ERRORS

--SUBSTRING
--Select err.FirstName, dem.FirstName
--from EMPLOYEE_ERRORS as err
--join Tutorial..EmployeeDemographics as dem
--on Substring(err.FirstName, 1,3) = Substring(dem.FirstName,1,3)

select LastName, SUBSTRING(LastName, 1, 5) as FirstFive
from Tutorial..EmployeeDemographics

--UPPER AND LOWER
select LastName, UPPER(LastName) as CapitalizedForm
from Tutorial..EmployeeDemographics

select LastName, Lower(LastName) as DeCapitalizedForm
from Tutorial..EmployeeDemographics

Select *
from Tutorial..EmployeeDemographics