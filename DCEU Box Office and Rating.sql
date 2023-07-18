
--Select and shows the data within the table 

Select *
From Dceu_Box_Office_and_Rating;

--Selects and shows the longest duration movies

Select movie_title, [duration (mins)]
From Dceu_Box_Office_and_Rating
order by [duration (mins)] desc ;

--Selects and shows the movies with the highets budget

Select movie_title, [budget ($)]
From Dceu_Box_Office_and_Rating
order by [budget ($)] desc ;

--Selects and shows the movies with the highets US gross

Select movie_title, [US_gross ($)]
From Dceu_Box_Office_and_Rating
order by [US_gross ($)] desc ;

--Selects and shows the movies with the highets worldwide gross 

Select movie_title, [worldwide_gross ($)]
From Dceu_Box_Office_and_Rating
order by [worldwide_gross ($)] desc ;

--Selects and shows the us profit of the movies

Select movie_title, ([US_gross ($)]-[budget ($)]) as US_Profit 
From Dceu_Box_Office_and_Rating
order by US_Profit desc ;

--Selects and shows the worldwide profit of the movies

Select movie_title, ([worldwide_gross ($)]-[budget ($)]) as WorldWide_Profit 
From Dceu_Box_Office_and_Rating
order by WorldWide_Profit  desc ;

--Selects and shows the highest rated Imbd

Select movie_title, imdb
From Dceu_Box_Office_and_Rating
order by imdb  desc ;

--Selects and shows the highest rated metascore

Select movie_title, metascore
From Dceu_Box_Office_and_Rating
order by metascore  desc ;

--Selects and shows the highest rated tomatometer

Select movie_title, tomatometer
From Dceu_Box_Office_and_Rating
order by tomatometer  desc ;

--Selects and shows the highest rated audience score

Select movie_title, audience_score
From Dceu_Box_Office_and_Rating
order by audience_score  desc ;
