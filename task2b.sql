select count(*) as num_trips
    from fares
    where total_amount < 10;