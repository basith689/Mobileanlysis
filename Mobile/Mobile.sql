-- 1. Average Launch Price per Country

SELECT 
    ROUND(AVG(Launched_Price_Pakistan)) AS Avg_Price_Pakistan,
    ROUND(AVG(Launched_Price_India)) AS Avg_Price_India,
    ROUND(AVG(Launched_Price_China)) AS Avg_Price_China,
    ROUND(AVG(Launched_Price_USA)) AS Avg_Price_USA,
    ROUND(AVG(Launched_Price_Dubai)) AS Avg_Price_Dubai
FROM mobiles;

-- 2. Most Expensive & Cheapest Phones in India

select Model_Name, Company_Name, Launched_Price_India
from mobiles
order by Launched_Price_India desc
limit 1;

select Model_Name, Company_Name, Launched_Price_India
from mobiles
order by Launched_Price_India asc
limit 1;

-- 3. Top 5 Brands with Highest Average Price in India

select Company_Name, Launched_Price_India, Round(avg(Launched_Price_India)) as Avg_price_India
from mobiles
group by Company_Name, Launched_Price_India
order by Avg_price_India desc
limit 5;

-- 4. Mobile Price Trends Over the Years in India

select Launched_Year, round(avg(Launched_Price_India)) as Avg_Price_India
from mobiles
group by Launched_Year
order by Launched_Year;

-- 5. Distribution of Mobiles in Different Price Segments in India

select
	case
		when Launched_Price_India < 20000 then 'Budget'
        when Launched_Price_India between 20000 and 40000 then 'Mid Range'
        when Launched_Price_India > 40000 then 'Flagship'
	end as Price_Category,
    count(*) Mobile_count
from mobiles
group by Price_category
order by Mobile_count desc;

-- 6. Best Battery Life Mobiles

select Model_Name,Company_Name,Battery_Capacity
from mobiles
order by Battery_Capacity Desc
Limit 5;

-- 7. Most Popular Screen Size for Mobiles

select Screen_Size, count(*) as Mobile_count
from mobiles
group by Screen_Size
order by Mobile_count desc
limit 5;

-- 8. Top 5 Companies with the Most Models Launched

select Company_Name, count(*) as Total_Models
from mobiles
group by Company_Name
order by Total_Models desc
limit 5;

-- 9. Average RAM Size per Brand

select Company_Name, round(avg(RAM)) as avg_ram
from mobiles
group by Company_Name
order by avg_ram desc;

-- 10. Correlation Between Battery Capacity and Price in India

select 
	Battery_Capacity,
    round(avg(Launched_Price_india)) as avg_price_india
from mobiles
group by Battery_Capacity
order by Battery_Capacity Desc;







