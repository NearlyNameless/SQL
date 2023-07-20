
--Selects and shows all the data within the table 

Select *
From [Best-Selling-Manga];

--Counts all the demographics of the best selling mangas

Select Demographic, COUNT(Demographic) as Count
From [Best-Selling-Manga]
Group by Demographic
Order by Count desc

-- Counts the publishers of the best selling mangas

Select top 10 Publisher, COUNT(Publisher) as Count
From [Best-Selling-Manga]
Group by Publisher
Order by Count desc

--  Shows the best selling mangas with the most volumes

Select top 10 [Manga series], Publisher, Demographic, [No# of collected volumes] as Volumes, [Approximate sales in million(s)]
From [Best-Selling-Manga]
Order by Volumes desc;

--Shows the Highest selling mangas

Select top 10 [Manga series], Publisher, Demographic, [Approximate sales in million(s)]
From [Best-Selling-Manga]
Order by [Approximate sales in million(s)] desc;

--Shows the mangas with the highest average sales per volume

Select top 10 [Manga series], Publisher, Demographic, [Approximate sales in million(s)], [Average sales per volume in million(s)]
From [Best-Selling-Manga]
Order by [Average sales per volume in million(s)] desc;

--Shows the top Authors via sales 

Select top 10 [Author(s)], [Manga series], [Approximate sales in million(s)]
From [Best-Selling-Manga]
Order by [Approximate sales in million(s)] desc;

--Shows the top Publisher of mangas via sales

Select top 10 Publisher, [Manga series], [Approximate sales in million(s)]
From [Best-Selling-Manga]
Order by [Approximate sales in million(s)] desc;

--Shows the publishers Total sales in Millions

Select top 10 Publisher, SUM([Approximate sales in million(s)]) as [Total Sales in Millions]
From [Best-Selling-Manga]
Group by Publisher
Order by [Total Sales in Millions] desc;

--Shows the Demographics Total sales in Millions

Select top 10 Demographic, SUM([Approximate sales in million(s)]) as [Total Sales in Millions]
From [Best-Selling-Manga]
Group by Demographic
Order by [Total Sales in Millions] desc;

