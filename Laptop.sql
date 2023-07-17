
--Selects and shows all the infomation within the table

Select *
From Laptops;

-- Shows the most expensive laptops 

Select * 
From Laptops
Order by [Final Price] desc;

-- Shows the least expensive laptops 

Select * 
From Laptops
Order by [Final Price] ;

-- Shows the MSI Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'MSI';

-- Shows the HP Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'HP';

-- Shows the Asus Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Asus';

-- Shows the Alurin Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Alurin';

-- Shows the Lenovo Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Lenovo';

-- Shows the Medion Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Medion';

-- Shows the Acer Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Acer';

-- Shows the Apple Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Apple';

-- Shows the Gigabyte Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Gigabyte';

-- Shows the Dell Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Dell';

-- Shows the Razer Laptops

Select Laptop, Brand 
From Laptops
WHERE Brand = 'Razer';

-- Shows the Samsung Laptops

Select Laptop, Brand  
From Laptops
WHERE Brand = 'Samsung';

-- Shows the LG Laptops

Select Laptop, Brand  
From Laptops
WHERE Brand = 'LG';


--Shows the laptops with a storage bigger than 512GB

Select Laptop, Storage 
From Laptops
WHERE Storage >= 512;

--Shows the laptops with a storage less than 512GB

Select Laptop, Storage 
From Laptops
WHERE Storage < 512;

--Shows the laptops with the SSD storage types

Select Laptop, [Storage type]
From Laptops
WHERE [Storage type] = 'SSD';

--Shows the laptops with the eMMC storage types

Select Laptop, [Storage type]
From Laptops
WHERE [Storage type] = 'eMMC';

--Shows how many laptops have Touch screen 

Select touch as Touch_Screen, COUNT(Touch ) as Count
From Laptops
Group by Touch 
order by Touch ;



