
--Select and shows all the data within table

Select *
From ReelView

--Select and shows the top 10 longest run time

Select top 10 title,genre,release_date,run_time
From ReelView
Order by run_time desc;

--Select and shows the top 10 longest run time

Select top 10 title,genre,release_date,stars_rating
From ReelView
Order by stars_rating desc;

--Select and shows the count of genres in the data 

Select top 10 genre, COUNT(genre) as Count
From ReelView
Group by genre
Order by Count desc;

--Select and shows the count of directors in the data 

Select top 10 director, COUNT(director) as Count
From ReelView
Group by director
Order by Count desc;

--Shows the most recent movies

Select top 10 title,genre,release_date,stars_rating
From ReelView
Order by release_date desc;

--Shows the oldest movies

Select top 10 title,genre,release_date,stars_rating
From ReelView
where release_date is not null
Order by release_date;
