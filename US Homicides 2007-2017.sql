
--Selects and shows all the data within the table

Select *
From Homicides

--Counts homicides

Select Count(uid) as Count_Homicides
From Homicides

--Shows the race with the highest number of victims

Select victim_race, Count(uid) as Number
From Homicides
Group by victim_race
Order by Number desc

--Shows the sex with the highest number of victims

Select victim_sex, Count(uid) as Number
From Homicides
Group by victim_sex
Order by Number desc

--Shows the Age brackets with the highest number of victims

Select age_brackets, Count(uid) as Number
From Homicides
Group by age_brackets
Order by Number desc

--Shows city with highest homicides

Select city, Count(uid) as Number
From Homicides
Group by city
Order by Number desc

--Shows State with highest homicides

Select state, Count(uid) as Number
From Homicides
Group by state
Order by Number desc

--Shows Years with highest homicides

Select reported_year, Count(uid) as Number
From Homicides
Group by reported_year
Order by Number desc


--Shows dispositions of cases

Select disposition, Count(uid) as Number
From Homicides
Group by disposition
Order by Number desc
