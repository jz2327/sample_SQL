CREATE TABLE alltrips
AS
SELECT 
T.medallion, T.hack_license, T.vendor_id, T.pickup_datetime, T.rate_code, T.store_and_fwd_flag, T.dropoff_datetime, T.passenger_count, T.trip_time_in_secs, T.trip_distance, T.pickup_longitude, T.pickup_latitude, T.dropoff_longitude, T.dropoff_latitude, F.payment_type, F.fare_amount, F.surcharge, F.mta_tax, tip_amount, F.tolls_amount, F.total_amount
FROM 
trips T, fares F
WHERE 
T.medallion=F.medallion AND T.hack_license=F.hack_license AND T.vendor_id=F.vendor_id AND T.pickup_datetime=F.pickup_datetime
ORDER BY 
T.medallion, T.hack_license, T.vendor_id, T.pickup_datetime, T.pickup_longitude;

select * from alltrips;