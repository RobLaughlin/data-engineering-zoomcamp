SELECT lpep_pickup_datetime, trip_distance 
FROM green_tripdata_2025_11 
WHERE trip_distance < 100 
ORDER BY trip_distance DESC 
LIMIT 1;