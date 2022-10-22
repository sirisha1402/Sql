/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[username]
      ,[useremail]
      ,[password]
      ,[mobile]
  FROM [TE_API_Angular].[dbo].[Registration]
  select * from Registration