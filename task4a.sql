select A.vehicle_type, A.total_trips, B.total_revenue, B.avg_tip_percentage
from
(select M1.vehicle_type, count(*) as total_trips
from medallions M1, trips T
where M1.medallion=T.medallion 
group by M1.vehicle_type) A, 
(select M2.vehicle_type, sum(F.fare_amount) as total_revenue, concat(AVG(F.tip_amount/F.fare_amount)*100,'%') as avg_tip_percentage
from medallions M2, fares F
where M2.medallion=F.medallion
group by M2.vehicle_type) B
where A.vehicle_type = B.vehicle_type
order by A.vehicle_type;