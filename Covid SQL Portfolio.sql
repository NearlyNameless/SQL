--Selects all the data in the CovidDeaths table
Select * 
From SQLPortfolio..CovidDeaths
Where continent is not null
order by 3,4

--Selects all the data in the CovidVaccinations table

Select * 
From SQLPortfolio..CovidVaccinations
Where continent is not null
order by 3,4

-- Selects Data that we are going to use  

Select Location, date, total_cases, new_cases, total_deaths, population
From SQLPortfolio..CovidDeaths
Where continent is not null 
order by 1,2

--Shows percentage of deaths compared to cases 

Select Location, date, total_cases,total_deaths, (cast(total_deaths as numeric) / CAST(total_cases as numeric))*100 as DeathPercentage
From SQLPortfolio..CovidDeaths
where continent is not null 
order by 1,2

--Shows percentage of total cases compared to the population

Select Location, date, Population, total_cases,  (cast(total_cases as numeric) / CAST(population as numeric))*100 as PercentPopulationInfected
From SQLPortfolio..CovidDeaths
order by 1,2

-- Shows countries with highest cases compared to the population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max(cast(total_cases as numeric) / CAST(population as numeric))*100 as PercentPopulationInfected
From SQLPortfolio..CovidDeaths
Group by Location, Population
order by PercentPopulationInfected desc

--Shows countries with the highest deaths

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From SQLPortfolio..CovidDeaths
Where continent is not null 
Group by Location
order by TotalDeathCount desc

--Shows many vaccinations where giving to each countries
Select Location, MAX(cast(total_vaccinations as bigint)) as TotalVaccinations
From SQLPortfolio..CovidVaccinations
Where continent is not null 
Group by Location
order by TotalVaccinations desc

--Shows continents with the highest deaths 

Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From SQLPortfolio..CovidDeaths
Where continent is not null 
Group by continent
order by TotalDeathCount desc

--Shows continents with the highest vaccinations 

Select continent, MAX(cast(total_vaccinations as bigint)) as TotalVaccinations
From SQLPortfolio..CovidVaccinations
Where continent is not null 
Group by continent
order by TotalVaccinations desc


-- Shows total deaths compared to cases around the entire world

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From SQLPortfolio..CovidDeaths
where continent is not null 
order by 1,2

--Shows total vaccinations made
Select sum(convert(bigint,total_vaccinations)) as total_vaccinations
From SQLPortfolio..CovidVaccinations
where continent is not null 


--Shows how many vaccinations each countries received 

Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From SQLPortfolio..CovidDeaths dea
Join SQLPortfolio..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
order by 2,3

-- Uses CTE to be able to to preform the calculation of the percantage of vaccinations

With PopvsVac (Continent, Location, Date, Population, New_Vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated
From SQLPortfolio..CovidDeaths dea
Join SQLPortfolio..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
)
Select *, (RollingPeopleVaccinated/Population)*100 as PercentageRollingVaccinated 
From PopvsVac


-- Performs the same calculation as the previous query just useing temp table 

DROP Table if exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleVaccinated numeric
)

Insert into #PercentPopulationVaccinated
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(bigint,vac.new_vaccinations)) OVER (Partition by dea.Location Order by dea.location, dea.Date) as RollingPeopleVaccinated

From SQLPortfolio..CovidDeaths dea
Join SQLPortfolio..CovidVaccinations vac
	On dea.location = vac.location
	and dea.date = vac.date

Select *, (RollingPeopleVaccinated/Population)*100
From #PercentPopulationVaccinated