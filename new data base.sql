Select City,  Sum(Sales), Count(City)
From PortfolioProject.dbo.Orders$
WHere Sales > 50 And Quantity > 7
Group By City
Order By Count(City)

With  CTE_Orders 
As 
(
Select City,  Sum(Sales), Count(City)
From PortfolioProject.dbo.Orders$
WHere Sales > 50 And Quantity > 7
Group By City
)
Select City, Count(City)
From CTE_Orders 