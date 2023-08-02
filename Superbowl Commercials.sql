
-- Selects and shows all the data within the table  

Select *
From Superbowl_Commercials

-- Shows the brands with the most ads

Select Brand, COUNT([Superbowl Ads Link]) as Count
From Superbowl_Commercials
GROUP BY Brand
Order by Count desc

-- Shows the brands with the most ads

Select Brand, COUNT([Superbowl Ads Link]) as Count
From Superbowl_Commercials
GROUP BY Brand
Order by Count desc

-- Shows the most viewd commerical via youtube

select max(Brand) as Brand,max([Youtube Views]) as Views, max([Youtube Likes]) as Likes
from Superbowl_Commercials
group by [Youtube Link]
order by Views desc

-- Shows the brands and the cost total cost of their adverts 

Select Brand, sum([Estimated Cost]) as Sum_Cost
From Superbowl_Commercials
group by Brand
order by Sum_Cost desc

-- Shows the brands and the amount of views their commericals got 

Select Brand, sum([Youtube Views]) as Sum_Views, sum([Youtube Likes]) as Sum_Likes
From Superbowl_Commercials
group by Brand
order by Sum_Views desc