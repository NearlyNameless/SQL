
--select and shows all the data within the table

select *
from Chapters

--select and shows all the data within the table

select *
from Characters

--select and shows all the data within the table

select *
from Dialogue

--select and shows all the data within the table

select *
from Movies

--select and shows all the data within the table

select *
from Places

--select and shows all the data within the table

select *
from Spells

--shows the movie with the most lines of dialogue and their runtime

Select [Movie Title], max(Runtime) as Runtime, count(Dialogue) as [Lines of Dialogue]
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
Group by [Movie Title]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Philosopher's Stone

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 1
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Chamber of Secrets

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 2
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Prisoner of Azkaban

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 3
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Goblet of Fire

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 4
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Order of the Phoenix

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 5
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Half-Blood Prince

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 6
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Deathly Hallows Part 1

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 7
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the characters with the most dialogue in Harry Potter and the Deathly Hallows Part 2

Select top 10 [Character Name], count(Dialogue) as [Lines of Dialogue], max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Characters on Characters.[Character ID] = Dialogue.[Character ID]
where Movies.[Movie ID] = 8
Group by [Character Name]
order by [Lines of Dialogue] desc

--shows the most popular places in Harry Potter and the Philosopher's Stone

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 1
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Chamber of Secrets

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 2
Group by [Place Name]
order by Count desc


--shows the most popular places in Harry Potter and the Prisoner of Azkaban

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 3
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Goblet of Fire

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 4
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Order of the Phoenix

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 5
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Half-Blood Prince

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 6
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Deathly Hallows Part 1

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 7
Group by [Place Name]
order by Count desc

--shows the most popular places in Harry Potter and the Deathly Hallows Part 2

Select top 10 [Place Name], count([Place Name]) as Count, max([Movie Title]) as Film
from Movies
inner join Chapters  on movies.[Movie ID] = Chapters.[Movie ID]
inner join Dialogue on Dialogue.[Chapter ID] = Chapters.[Chapter ID]
inner join Places on Places.[Place ID] = Dialogue.[Place ID]
where Movies.[Movie ID] = 8
Group by [Place Name]
order by Count desc

-- shows total runtime throughout all the movies

select sum(Runtime) as Total_Runtime
from Movies
