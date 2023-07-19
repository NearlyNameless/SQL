
-- Selects and shows all teh data within the table 

Select *
From Manhwa_Mal;

-- Alters the table by deleting the a column within the table

ALTER TABLE Manhwa_Mal
DROP COLUMN type;

-- Alters the table by deleting the a column within the table

ALTER TABLE Manhwa_Mal
DROP COLUMN F1;

--Shows the top 10 most popular Manhwa, their status, genre and synopsis 

Select top 10 title,chapters,status,genres, popularity,synopsis
From Manhwa_Mal
order by popularity;

--Shows the top 10 highest ranked Manhwa, their status, genre and synopsis

Select top 10 title,chapters,status,genres,rank,synopsis 
From Manhwa_Mal
where rank is not null
order by rank;

--Shows the top 10 highest scored Manhwa, their status, genre and synopsis

Select top 10 title,chapters,status,genres, score,synopsis
From Manhwa_Mal
where score is not null
order by score desc;

--Shows the top 10 most favorited Manhwa, their status, genre and synopsis 

Select top 10 title,chapters,status,genres, favorites,synopsis
From Manhwa_Mal
order by favorites desc;

--Shows the top 10 Manhwa with the most members, their status, genre and synopsis 

Select top 10 title,chapters,status,genres, members,synopsis
From Manhwa_Mal
order by members desc;

--Shows the count of genres and the sum of the scores 

Select genres, COUNT(genres) as Count, SUM(score) as Sum_Score
From Manhwa_Mal
group by genres
order by Count desc;
