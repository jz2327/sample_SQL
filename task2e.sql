select medallion, count(*) as num_trips
    from fares
    group by medallion
    order by medallion;