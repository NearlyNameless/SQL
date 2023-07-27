
-- Select and shows all the data within the table

Select *
From Kickstarter_Projects


--Counts the states

Select State, count(state) as Count
From Kickstarter_Projects
Group by State
Order by Count desc

-- Shows the most successful category kickstarters

Select Category, Count(State) as Count
From Kickstarter_Projects
Where State = 'Successful'
group by Category
order by Count desc;

-- Shows the most successful subcategory kickstarters

Select Subcategory, Count(State) as Count
From Kickstarter_Projects
Where State = 'Successful'
group by Subcategory
order by Count desc;

--The biggest Goal Completion

Select top 10 max(Name)as Name, max(Category) as Catergory,max(Subcategory)as Subcategory, sum(Pledged/Goal)*100 As Goal_Completion, max(Pledged)as Money_Pledged
From Kickstarter_Projects
where Goal > 1000
Group by Name
Order by Goal_Completion desc;

--The highest money pledged

Select top 10 max(Name) as Name, max(Category) as Category, max(Subcategory) as Subcategory, max(Launched) as Launched,max(Goal) as Goal, max(Pledged) as Pledged
From Kickstarter_Projects
Group by Name 
Order by Pledged desc;

--The highest backers 

Select top 10 max(Name) as Name, max(Category) as Category, max(Subcategory) as Subcategory, max(Launched) as Launched, max(Backers) as Backers
From Kickstarter_Projects
Group by Name 
Order by Backers desc;