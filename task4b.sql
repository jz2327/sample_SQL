select 
medallion_type, count(*) AS total_trips, sum(fare_amount) AS total_revenue, concat(avg(tip_amount/fare_amount)*100, '%') AS avg_tip_percentage
from fares 
NATURAL JOIN medallions 
GROUP BY medallion_type
ORDER BY medallion_type;