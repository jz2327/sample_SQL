select medallion, pickup_datetime
    from fares
    group by medallion, pickup_datetime
    having count(*)>1
    order by medallion;