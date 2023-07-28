

--Select and shows all the data within the table

Select *
From Space_Missions;

--Shows the company with the  most launches

Select top 10 Company, count(MissionStatus) as Count 
From Space_Missions
Group by Company
Order by Count desc;

--Shows the company with the most launches before the year 2000

Select top 10 Company, count(MissionStatus) as Count 
From Space_Missions
Where Date < '2000-10-04'
Group by Company
Order by Count desc;

--Shows the company with the most launches after the year 2000

Select top 10 Company, count(MissionStatus) as Count 
From Space_Missions
Where Date > '2000-10-04'
Group by Company
Order by Count desc;


--Shows the company with the most success

Select top 10 Company, count(MissionStatus) as Count 
From Space_Missions
Where MissionStatus = 'Success'
Group by Company
Order by Count desc;

--Shows the company with the most failures

Select top 10 Company, count(MissionStatus) as Count 
From Space_Missions
Where MissionStatus = 'Failure'
Group by Company
Order by Count desc;

--Shows the rocket with the most success

Select top 10 Rocket,max(RocketStatus) as RocketStatus, count(MissionStatus) as Count 
From Space_Missions
Where MissionStatus = 'Success'
Group by Rocket
Order by Count desc;

--Shows the rocket with the most failures

Select top 10 Rocket,max(RocketStatus) as RocketStatus, count(MissionStatus) as Count 
From Space_Missions
Where MissionStatus = 'Failure'
Group by Rocket
Order by Count desc;

--Shows the rocket with the most flights and their status

Select top 10 Rocket,max(RocketStatus) as RocketStatus, count(MissionStatus) as Count 
From Space_Missions
Group by Rocket
Order by Count desc;

--Shows the location with the most successful lanuches 

Select top 10 Location, count(Location) as Count 
From Space_Missions
Where MissionStatus = 'Success'
Group by Location
Order by Count desc;

--Shows the location with the most failure lanuches 

Select top 10 Location, count(Location) as Count 
From Space_Missions
Where MissionStatus = 'Failure'
Group by Location
Order by Count desc;


