--Selects and shows all the data within the table

Select *
From City_Temperature

--Shows the hottest Region during 1995

Select Year, max(AvgTemperature) as Temperature
From City_Temperature
Group by Year
order by 2 desc

--Shows the hottest Region during 1996

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 1996
Group by Region
order by 3 desc

--Shows the hottest Region during 1997

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 1997
Group by Region
order by 3 desc

--Shows the hottest Region during 1998

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 1998
Group by Region
order by 3 desc

--Shows the hottest Region during 1999

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 1999
Group by Region
order by 3 desc

--Shows the hottest Region during 2000

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2000
Group by Region
order by 3 desc

--Shows the hottest Region during 2001

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2001
Group by Region
order by 3 desc

--Shows the hottest Region during 2002

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2002
Group by Region
order by 3 desc

--Shows the hottest Region during 2003

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2003
Group by Region
order by 3 desc

--Shows the hottest Region during 2004

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2004
Group by Region
order by 3 desc

--Shows the hottest Region during 2005

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2005
Group by Region
order by 3 desc

--Shows the hottest Region during 2006

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2006
Group by Region
order by 3 desc

--Shows the hottest Region during 2007

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2007
Group by Region
order by 3 desc

--Shows the hottest Region during 2008

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2008
Group by Region
order by 3 desc


--Shows the hottest Region during 2009

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2009
Group by Region
order by 3 desc


--Shows the hottest Region during 2010

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2010
Group by Region
order by 3 desc


--Shows the hottest Region during 2011

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2011
Group by Region
order by 3 desc


--Shows the hottest Region during 2012

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2012
Group by Region
order by 3 desc


--Shows the hottest Region during 2013

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2013
Group by Region
order by 3 desc


--Shows the hottest Region during 2014

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2014
Group by Region
order by 3 desc


--Shows the hottest Region during 2015

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2015
Group by Region
order by 3 desc


--Shows the hottest Region during 2016

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2016
Group by Region
order by 3 desc


--Shows the hottest Region during 2017

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2017
Group by Region
order by 3 desc


--Shows the hottest Region during 2018

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2018
Group by Region
order by 3 desc


--Shows the hottest Region during 2019

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2019
Group by Region
order by 3 desc


--Shows the hottest Region during 2020

Select Region, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
Where Year = 2020
Group by Region
order by 3 desc

--Shows the hottest Years 

Select Year, max(AvgTemperature) as Temperature
From City_Temperature
Group by Year
order by 2 desc

--Shows the temperatures of 1995

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1995
Group by City
order by 5 desc

--Shows the temperatures of 1996

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1996
Group by City
order by 5 desc

--Shows the temperatures of 1997

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1997
Group by City
order by 5 desc

--Shows the temperatures of 1998

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1998
Group by City
order by 5 desc

--Shows the temperatures of 1999

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1999
Group by City
order by 5 desc

--Shows the temperatures of 2000

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2000
Group by City
order by 5 desc

--Shows the temperatures of 2001

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2001
Group by City
order by 5 desc

--Shows the temperatures of 2002

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2002
Group by City
order by 5 desc

--Shows the temperatures of 2003

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2003
Group by City
order by 5 desc

--Shows the temperatures of 2004

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2004
Group by City
order by 5 desc

--Shows the temperatures of 2005

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2005
Group by City
order by 5 desc

--Shows the temperatures of 2006

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2006
Group by City
order by 5 desc

--Shows the temperatures of 2007

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2007
Group by City
order by 5 desc

--Shows the temperatures of 2008

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2008
Group by City
order by 5 desc

--Shows the temperatures of 2009

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2009
Group by City
order by 5 desc

--Shows the temperatures of 2010

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2010
Group by City
order by 5 desc

--Shows the temperatures of 2011

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2011
Group by City
order by 5 desc

--Shows the temperatures of 2012

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2012
Group by City
order by 5 desc

--Shows the temperatures of 2013

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2013
Group by City
order by 5 desc

--Shows the temperatures of 2014

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2014
Group by City
order by 5 desc

--Shows the temperatures of 2015

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2015
Group by City
order by 5 desc

--Shows the temperatures of 2016

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2016
Group by City
order by 5 desc

--Shows the temperatures of 2017

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2017
Group by City
order by 5 desc

--Shows the temperatures of 2018

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2018
Group by City
order by 5 desc

--Shows the temperatures of 2019

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2019
Group by City
order by 5 desc

--Shows the temperatures of 2020

Select max(Region) as Region, Max(Country) as Country,max(City) as City, max(Year) as Year, max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2020
Group by City
order by 5 desc

--Shows the Hottest month of 1995

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1995
group by Month

--Shows the Hottest month of 1996

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1996
Group by Month


--Shows the Hottest month of 1997

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1997
Group by Month


--Shows the Hottest month of 1998

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1998
Group by Month

--Shows the temperatures of 1999

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 1999
Group by Month

--Shows the temperatures of 2000

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2000
Group by Month

--Shows the temperatures of 2001

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2001
Group by Month

--Shows the temperatures of 2002

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2002
Group by Month

--Shows the temperatures of 2003

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2003
Group by Month


--Shows the temperatures of 2004

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2004
Group by Month

--Shows the temperatures of 2005

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2005
Group by Month

--Shows the temperatures of 2006

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2006
Group by Month

--Shows the temperatures of 2007

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2007
Group by Month

--Shows the temperatures of 2008

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2008
Group by Month

--Shows the temperatures of 2009

Select Month,max(AvgTemperature) as Temperaturee
From City_Temperature
where Year = 2009
Group by Month

--Shows the temperatures of 2010

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2010
Group by Month

--Shows the temperatures of 2011

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2011
Group by Month

--Shows the temperatures of 2012

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2012
Group by Month

--Shows the temperatures of 2013

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2013
Group by Month

--Shows the temperatures of 2014

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2014
Group by Month

--Shows the temperatures of 2015

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2015
Group by Month

--Shows the temperatures of 2016

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2016
Group by Month

--Shows the temperatures of 2017

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2017
Group by Month

--Shows the temperatures of 2018

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2018
Group by Month

--Shows the temperatures of 2019

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2019
Group by Month

--Shows the temperatures of 2020

Select Month,max(AvgTemperature) as Temperature
From City_Temperature
where Year = 2020
Group by Month

