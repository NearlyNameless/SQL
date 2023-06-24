--Selects all the data from the AnimeFilterd table

Select *
From AnimeFiltered;

--Selects all the data from the FinalAnimeDataset table

Select *
From FinalAnimeDataset;

--Selects all the data from the UserFiltered table

Select *
From UserFiltered;

--Shows the number of users
Select Count( distinct user_id) as Users
From FinalAnimeDataset

--Shows the genders of the users
Select Count(Distinct username)as Users, gender
From FinalAnimeDataset
Group by gender
order by 1 desc;

--Shows the number of animes 

Select Count(Distinct anime_id) as Animes
From FinalAnimeDataset;

--Shows the 20 most popluar animes

Select top 20 title, sum(my_score)as Score
From FinalAnimeDataset
Where type = 'TV' 
Group by title
Order by 2 desc;

--hows the highest scoring animes for Females

Select FinalAnimeDataset.title, sum(my_score)as Score
From FinalAnimeDataset
where gender = 'Female'
Group by title
Order by 2 desc;

--hows the highest scoring animes for Males

Select FinalAnimeDataset.title, sum(my_score)as Score
From FinalAnimeDataset
where gender = 'Male'
Group by title
Order by 2 desc;

--Shows the highest scoring type of anime

Select FinalAnimeDataset.type, sum(my_score)as Score
From FinalAnimeDataset
Group by type
Order by 2 desc;

--Shows the highest scoring anime genre

Select genre, sum(my_score)as Score
From FinalAnimeDataset
Group by genre
Order by 2 desc;

--Shows the highest scoring anime genre for Males

Select genre, sum(my_score)as Score
From FinalAnimeDataset
where gender = 'Male'
Group by genre
Order by 2 desc;

--Shows the highest scoring anime genre for Females

Select genre, sum(my_score)as Score
From FinalAnimeDataset
where gender = 'Female'
Group by genre
Order by 2 desc;


--Shows the score of the anime from highest to lowest

Select Name,Genres, Score
From AnimeFiltered
order by 3 desc;

--Shows the most favorited animes from highest to lowest

Select Name,Genres, Favorites
From AnimeFiltered
order by 3 desc;

--Shows how many people dropped the anime

Select Name,Genres, Dropped
From AnimeFiltered
order by 3 desc;

--Shows highest rating anime doen by the users

Select an.Name, SUM(us.rating) Rated
From AnimeFiltered an
Join UserFiltered us
	on an.anime_id = us.anime_id
Group by an.Name
Order by 2 desc;

