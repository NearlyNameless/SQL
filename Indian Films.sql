
--This Selects and shows all the data within the table

Select *
From Indian_Movies

--Counts the films

Select Count(title) as Count_Films
From Indian_Movies

--Counts the languages of films

Select original_language,Count(title) as Count_Films
From Indian_Movies
group by original_language
Order by Count_Films desc

--Alters the column within the table

ALTER TABLE Indian_Movies
ALTER COLUMN release_date date;

-- Select and shows the most popular genres 

Select genres,Count(title) as Count_Films
From Indian_Movies
WHERE genres is not null
group by genres
Order by Count_Films desc

--shows the most popular Indian movies

Select top 10 title,genres, popularity
From Indian_Movies
Order by popularity desc

--shows the least popular Indian movies

Select top 10 title, genres,popularity
From Indian_Movies
Order by popularity 

--shows the highest voted Indian movies

Select top 10 title,genres, vote_count
From Indian_Movies
Order by vote_count desc

--shows the lowest voted Indian movies

Select top 10 title,genres, vote_count
From Indian_Movies
Order by vote_count

--shows the highest average voted Indian movies

Select top 10 title,genres, vote_average
From Indian_Movies
Order by vote_average desc

--shows the lowest average voted Indian movies

Select top 10 title,genres, vote_average
From Indian_Movies
Order by vote_average

-- Average popularity of genres

select top 10 genres, AVG(popularity) as Avg_Popularity
from Indian_Movies
Group by genres
order by Avg_Popularity desc


