select passenger_count as number_of_passengers, count(*) as num_trips
    from trips
    group by passenger_count
    order by number_of_passengers;