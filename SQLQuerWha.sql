/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Creditor]
      ,[Debtor]
      ,[Amount]
      ,[Risk]
  FROM [PortfolioProject].[dbo].['P6-EuroDebtCrisis$']

  Select  Creditor, Amount, Count(Creditor) over  (Partition by Amount)
  From PortfolioProject.dbo.['P6-EuroDebtCrisis$']
  Where Creditor = 'Italy' and Risk = 'High Risk'
  Group By Creditor, Amount
  Order by Amount Desc

  Select *
  From PortfolioProject.dbo.['P6-EuroDebtCrisis$']
 

  Delete From PortfolioProject.dbo.['P6-EuroDebtCrisis$']
  Where Creditor = 'Spain' and Debtor = 'Italy'