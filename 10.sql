--CREATE TABLE MyFamily 
--(ID int,
--FirstName varchar(40),
--LastName varchar(40),
--SchoolAttended varchar(40)
--)
--insert into Myfamily Values 
--(001, 'Oyeniran', 'Sunday', 'FUPRE'),
--(002, 'Oyeniran', 'Gbenga', 'EKSU'),
--(003, 'Oyeniran', 'Raphael', 'OOU'),
--(004, 'Oyeniran', 'Oyinkansola', 'STLouis')

--insert into Myfamily Values 
--(005, 'Oyeniran', 'Samuel', 'FUTA')

SELECT COunt(LastName) AS CountofLastName
from Tutorial.dbo.MyFamily
