
--Selects and shows all the data within the table

Select *
From Times

--Counts how many honors givin

Select Count(id) as Count
From Times

-- Shows the countries with the most picks

Select Country, COUNT(id) as Count
From Times
where Country is not null 
Group by Country
order by Count desc

-- Shows the most used Category

Select Category, Count(id) as Count
From Times
where Category is not null 
Group by Category
order by Count desc


-- Shows the people that have beem picked multiple times

Select top 14 Name, Count(id) as Count
From Times
Group by Name
order by Count desc

-- Shows the honors

Select Honor, Count(id) as Count
From Times
where Honor is not null 
Group by Honor
order by Count desc

-- Adds a Unique Idenitifier to the table

ALTER TABLE
  Times
ADD
  id int IDENTITY(1, 1) NOT NULL;