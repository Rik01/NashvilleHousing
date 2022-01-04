/*

Cleaning Data in SQL Queries

*/

Select [Sale Date],CONVERT(Date, [Sale Date]) 
From PortfolioProject..Nashville_housing

Update PortfolioProject..Nashville_housing
SET [Sale Date]=CONVERT(date,[Sale Date])

Select [Property Address]
FROM PortfolioProject..Nashville_housing

Alter TABLE PortfolioProject..Nashville_housing
Add SaleDateConverted Date;

Update PortfolioProject..Nashville_housing
Set [SaleDateConverted] =Convert(Date,[Sale Date])

Select UniqueID, [Total Value]
From PortfolioProject..Nashville_housing
where [Total Value] is NULL
--order by [Parcel ID]

Alter Table PortfolioProject..Nashville_housing
Drop Column [Column1]




Select a.[Parcel ID],a.[Property Address],b.[Parcel ID],b.[Property Address]
From PortfolioProject..Nashville_housing a
Join PortfolioProject..Nashville_housing b
on a.[Parcel ID]=b.[Parcel ID]
And a.[Unnamed: 0]<>b.[Unnamed: 0]
where a.[Property Address] is NULL


Select [Property Address]
From PortfolioProject..Nashville_housing

Select SUBSTRING([Property Address], 1,CHARINDEX(',',[Property Address], -1 )