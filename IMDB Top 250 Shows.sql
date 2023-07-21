
--Selects and shows all the data within the table

Select *
From IMDB;

--Selects the top 10 highest rated shows

Select top 10 Name,Episodes,Type,Rating
From IMDB
Order by Rating desc;

--Selects the top 10 highest rated shows that have ended

Select top 10 Name,Episodes,Type,Rating
From IMDB
Where [End Year] is NOT null
order by Rating desc

--Shows the count of the Type of the top 250 shows

Select Type, COUNT(Type)as Count
From IMDB
Group by Type
Order by Count desc

--Selects the top 10 highest rated shows that are still running

Select top 10 Name,Episodes,Type,Rating
From IMDB
Where [End Year] is null
order by Rating desc

--Selects the top 10 Longest shows

Select top 10 Name,Episodes,Type,Rating
From IMDB
Order by Episodes desc;

--Selects the top 10 Longest running shows

Select top 10 Name,Episodes,Type,Rating, ([End Year] - [Start Year]) As [Run Time in Years]
From IMDB
Order by [Run Time in Years]  desc;

--Shows the oldest Shows

Select top 10 Name,[Start Year],Episodes,Type,Rating
From IMDB
Order by [Start Year];


--Shows the most recent shows

Select top 10 Name,[Start Year],Episodes,Type,Rating
From IMDB
Order by [Start Year] desc;