
--Select and shows all the data within the table 

Select *
From INC5000_Companies_2019;

-- Average revenue of industries

Select top 10 industry, AVG(revenue) as Avg_Revenue
From INC5000_Companies_2019
Group by industry
order by Avg_Revenue desc;

-- Most represented industries

Select top 10 industry, COUNT(industry) as Count
From INC5000_Companies_2019
Group by industry
order by Count desc;

-- Least represented industries

Select top 10 industry, COUNT(industry) as Count
From INC5000_Companies_2019
Group by industry
order by Count ;

-- Most companies in a city

Select top 10 city, COUNT(name) as Count, Sum(revenue) as Total_Revenue
From INC5000_Companies_2019
Group by city
order by Count desc;

-- Industries with the highest growth rates

Select top 10 industry, avg([growth_%]) as Avg_Growth_Rate
From INC5000_Companies_2019
Group by industry
order by Avg_Growth_Rate desc;

-- Industries with the lowest growth rates

Select top 10 industry, avg([growth_%]) as Avg_Growth_Rate
From INC5000_Companies_2019
Group by industry
order by Avg_Growth_Rate;

-- Companies with the most increase in workers

Select top 10 name, SUM(workers-previous_workers) as Increase_in_Workers
From INC5000_Companies_2019
Group by name
order by Increase_in_Workers desc;

-- Shows companies with a smaller workforce then they previously had

Select name,revenue,[growth_%]
From INC5000_Companies_2019
where workers < previous_workers
order by revenue desc;
