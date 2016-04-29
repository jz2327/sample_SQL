select A.medallion, concat(IFNULL(B.no_GPS_trips/A.total_trips, 0)*100,'%') as percentage_of_trips
from
(select T1.medallion, count(*) as total_trips
from trips T1
group by T1.medallion) A LEFT JOIN
(select T2.medallion, count(*) as no_GPS_trips
from trips T2
where T2.pickup_longitude=0 AND T2.pickup_latitude=0 AND T2.dropoff_longitude=0 AND T2.dropoff_latitude=0
group by T2.medallion) B
on A.medallion=B.medallion
group by A.medallion
order by A.medallion;