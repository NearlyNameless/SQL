
--Selects all from Sales_04_2019 and shows it 

select *
from Sales_04_2019;

--Selects all from Customer and shows it 

select *
from Customer;

--Selects all from Dates and shows it 

select *
from Dates;

--Selects all from Generations and shows it 

select *
from Generations;

--Selects all from Pastry_inventory and shows it 

select *
from Pastry_inventory;

--Selects all from Product and shows it 

select *
from Product;

--Selects all from Sales_outlet and shows it 

select *
from Sales_outlet;

--Selects all from Sales_targets and shows it 

select *
from Sales_targets;

--Selects all from Staff and shows it 

select *
from Staff;

--Shows how many customers there are in the data

Select COUNT(customer_id) as Number_of_Customers
From Customer;

--Shows the gender of the customers 

Select COUNT(customer_id) as Number_of_Customers, gender
From Customer
group by gender
order by 1 desc;

--Shows the generation of the customers 

Select ge.generation As Generation, COUNT(cu.customer_id) as Customers
from Customer cu
join Generations ge
	on cu.birth_year = ge.birth_year
group by ge.generation
order by 2 desc;


--Shows number of staff members

Select Count(staff_id) as Number_of_Staff
from Staff;

--Show the postion of the staff and how many members hold that job

Select position as Job, Count(staff_id) as Number_of_Staff
from Staff
group by position
order by 2 asc;

--Shows the most purchased item during April 2019

Select top 10 pr.product as Product, count(sa.product_id) as Purchases
from Sales_04_2019 sa
left join Product pr
	on pr.product_id = sa.product_id
group by pr.product
order by 2 desc

--Shows the most profited product during April 

Select top 10 pr.product as Product, SUM(pr.current_retail_price)-SUM(pr.current_wholesale_price) as Profit
from Sales_04_2019 sa
left join Product pr
	on pr.product_id = sa.product_id
group by pr.product
order by 2 desc

-- shows least purchased item during April 2019

Select top 10 pr.product as Product, count(sa.product_id) as Purchases
from Sales_04_2019 sa
left join Product pr
	on pr.product_id = sa.product_id
group by pr.product
order by 2 

-- shows the least profited item during April 2019

Select top 10 pr.product as Product, SUM(pr.current_retail_price)-SUM(pr.current_wholesale_price) as Profit
from Sales_04_2019 sa
left join Product pr
	on pr.product_id = sa.product_id
group by pr.product
order by 2 


--Shows the staff members who did the most sale during April 2019

select top 10 first_name as Staff_Member,max(position) as Job, COUNT(transaction_time) As Sales
from Sales_04_2019 sa
left join Staff st
	ON sa.staff_id = st.staff_id
group by first_name
order by 3 desc;

--Shows the staff members who did the least sale during April 2019

select top 10 first_name as Staff_Member,max(position) as Job, COUNT(transaction_time) As Sales
from Sales_04_2019 sa
left join Staff st
	ON sa.staff_id = st.staff_id
group by first_name
order by 3 ;

--Shows the most sales via location

select max(store_city) as City,sa.Neighorhood, COUNT(transaction_time)as Sales
from Sales_04_2019 sal
left join Sales_outlet sa
	on sal.sales_outlet_id = sa.sales_outlet_id
group by Neighorhood
order by 3 desc;

--Shows the most wasted product and the cost of it 

select product as Product, sum(start_of_day) - SUM(quantity_sold) as Waste, max(current_retail_price) * sum(waste) as Money_Wasted
from Pastry_inventory pa
left join Product pr
	on pa.product_id = pr.product_id
group by product
order by 2 desc;

--Shows how many sales where made within the the stores and out of it

select instore_yn as Instore_Purchases, count(transaction_time) as sales
from Sales_04_2019
where instore_yn is not null
group by instore_yn
order by 2 desc
