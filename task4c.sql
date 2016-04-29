select M1.agent_name, sum(F.fare_amount) as total_revenue
from medallions M1, fares F
where M1.medallion=F.medallion
group by M1.agent_number
order by total_revenue DESC, agent_name
LIMIT 10;