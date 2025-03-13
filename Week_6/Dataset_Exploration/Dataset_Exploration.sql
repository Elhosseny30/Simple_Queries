-- 1
select avg(Price) as "Average Price Of Cars"  from train;

-- 2
select count(Leather_interior) as "Number of Leather Cars Chepear 1400$" from train 
where Price < 1400;

-- 3
select max(Price) from train 
where Manufacturer = 'TOYOTA' and Prod_year = 2011;


-- 4
select Manufacturer, avg(Price) as "Average" from train 
group by Manufacturer
order by Average desc;

-- 5
select count(*) from train 
where Category = 'Jeep' and Fuel_type = 'Petrol';

-- 6
select min(Price) as "Cars with minimum Price" from train 


-- 7
