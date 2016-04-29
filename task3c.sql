select hack_license, count(DISTINCT medallion) as num_taxis_used
    from fares
    group by hack_license
    order by hack_license;