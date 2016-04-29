select cast(pickup_datetime as Date) as day, sum(total_amount) as total_revenue
    from fares
    group by cast(pickup_datetime as Date)
    order by day;