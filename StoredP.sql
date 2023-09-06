USE [Tutorial]
GO
/****** Object:  StoredProcedure [dbo].[Nothing]    Script Date: 8/1/2023 5:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Nothing]
@FirstName nvarchar(100),
@LastName nvarchar(100)
AS 
Select *
From Tutorial.dbo.EmployeeDemographics
Where FirstName = @FirstName OR LastName = @LastName