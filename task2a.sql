select fare_amount as amount, count(*) as num_trips 
    from fares
    group by fare_amount
    order by fare_amount;