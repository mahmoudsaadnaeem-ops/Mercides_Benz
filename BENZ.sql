select *
from benz

select top 100*
from benz

select distinct*
from benz 

select Year ,count(*)as count
from benz
group by Year
having count(*)>1 
select cast (Is_AMG AS INT)
from benz

SELECT TRIM( VEHICLE_NAME)
FROM benz

SELECT PRICE_USD,
Price_USD AS TOTAL_PRICE
FROM BENZ


SELECT COUNT(*)
FROM benz

select model_series , avg (price_usd) as avg_price
from BENZ
group by Model_Series
order by avg_price

select Body_type , count(*) as total_count
from benz
group by Body_type

select IS_AMG , AVG(PRICE_USD) as avg_price_amg
from benz
group by Is_AMG

SELECT body_type,
                 count(*)as total_price,
                 avg(price_usd) as avg_price,
                  max(price_usd)as max_price
from benz
group by Body_Type
having count(*)>1
order by avg_price desc

select vehicle_name ,price_usd,
       case 
           when price_usd>= 150000 THEN 'LUXURY'
           when price_usd between 8000 AND 149999 THEN 'MID_RANGE'
           else 'entery level'
        end as market_segment,is_amg
        from benz
        order by Price_USD desc

        SELECT *,
               CASE 
                   WHEN MILEAGE_miles < 20000 THEN 'low(<20k)'
                   WHEN MILEAGE_miles between 200000 and 500000 then 'medium (20k-50k)'
                   else 'high(>50)'
               end as MILEAGE_CATEGORY
               from benz
                
select top 5 vehicle_name , price_usd
from benz
where Body_Type='coupe' and price_usd = 10000
order by Price_USD asc

select is_4matic,
       avg(price_usd) as avg_price,
       count(*) as car_count
from benz
group by Is_4MATIC

select price_category,count(*) as  num_of_car ,
                      avg(Mileage_Miles) as avg_mile
from benz
group by Price_Category
order by num_of_car desc

select body_type,count(*) as total_cars,
       cast (avg(cast(is_amg as float))*100 as decimal(10,2)) as amg_percentage
from benz
group by body_type 
order by amg_percentage

SELECT COUNT(*)
FROM benz




















