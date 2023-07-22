
--Select and shows all the data within the table

Select *
From movie_statistic_dataset

-- alters the table by changing the data type of a column

ALTER TABLE movie_statistic_dataset
ALTER COLUMN production_date date;

--Shows the top 10 longest films

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, runtime_minutes
From movie_statistic_dataset
order by runtime_minutes desc;

--Shows the highest average rated films

Select top 10 movie_title, production_date, genres,director_name, movie_averageRating
From movie_statistic_dataset
order by movie_averageRating desc;

--Shows the movies with highest number of votes

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, movie_numerOfVotes
From movie_statistic_dataset
order by movie_numerOfVotes desc;

--Shows the movies with highest approval

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, approval_Index
From movie_statistic_dataset
order by approval_Index desc;

--Shows the movies with highest budgets

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, [Production budget $]
From movie_statistic_dataset
order by [Production budget $] desc;

--Shows the movies with highest Domestic gross

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, [Domestic gross $]
From movie_statistic_dataset
order by [Domestic gross $] desc;

--Shows the movies with highest Worldwide Gross

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, [Worldwide gross $]
From movie_statistic_dataset
order by [Worldwide gross $] desc;

--Shows the movies with highest Domestic profits

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, ([Domestic gross $] - [Production budget $]) as Domestic_Profits
From movie_statistic_dataset
order by Domestic_Profits desc;

--Shows the movies with highest Worldwide Gross

Select top 10 movie_title, production_date, genres,director_name,movie_averageRating, ([Worldwide gross $] - [Production budget $]) as WorldWide_Profits
From movie_statistic_dataset
order by WorldWide_Profits desc;

--Shows the worldwide profits via genres

Select top 10 genres, sum([Worldwide gross $] - [Production budget $]) as WorldWide_Profits
From movie_statistic_dataset
Group by genres
order by WorldWide_Profits desc;

--Shows the domestic profits via genres

Select top 10 genres, sum([Domestic gross $] - [Production budget $]) as Domestic_Profits
From movie_statistic_dataset
Group by genres
order by Domestic_Profits desc;

--Shows the worldwide profits via director

Select top 10 director_name, sum([Worldwide gross $] - [Production budget $]) as WorldWide_Profits
From movie_statistic_dataset
Where director_name not like '-'
Group by director_name
order by WorldWide_Profits desc;

--Shows the domestic profits via director

Select top 10 director_name, sum([Domestic gross $] - [Production budget $]) as Domestic_Profits
From movie_statistic_dataset
Where director_name not like '-'
Group by director_name
order by Domestic_Profits desc;


