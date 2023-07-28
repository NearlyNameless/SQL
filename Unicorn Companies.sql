
-- Selects and shows all the data within the table 

Select *
from Unicorn_Companies;

--Shows top 10 most valued unicorn companies 

Select top 10 Company, Valuation, [Date Joined], Industry, Country
from Unicorn_Companies
Order by Valuation desc;

--Shows top 10 unicorn companies with the biggest fundings

Select top 10 Company, Valuation,Funding, [Date Joined], Industry, Country
from Unicorn_Companies
Order by Funding desc;

--Shows top 10 unicorn companies with the biggest return on investments 

Select top 10 Company, Valuation,Funding,(Valuation-Funding) as Return_On_Investment,[Select Investors], [Date Joined], Industry, Country
from Unicorn_Companies
Order by Return_On_Investment desc;

--Shows the contient with the most companies

Select top 10 max(Continent) as Continent,COUNT(Company)as Count 
from Unicorn_Companies
Group by Continent
Order by Count desc

--Shows the Country with the most companies

Select top 10 max(Country) as Country,COUNT(Company)as Count 
from Unicorn_Companies
Group by Country
Order by Count desc

--Shows the City with the most companies

Select top 10 max(City) as City,COUNT(Company)as Count 
from Unicorn_Companies
Group by City
Order by Count desc

--Shows the top 10 industies 

Select top 10 Industry,COUNT(Company)as Count 
from Unicorn_Companies
Group by Industry
Order by Count desc

--Most recent companies to hit 1b

select top 10 Company,Industry,Valuation,Funding, [Date Joined], [Year Founded],Continent 
From Unicorn_Companies
Order by [Date Joined] desc

--Most 

select top 10 Company,Industry,Valuation,Funding, [Date Joined], [Year Founded],Continent 
From Unicorn_Companies
Order by [Date Joined] 


