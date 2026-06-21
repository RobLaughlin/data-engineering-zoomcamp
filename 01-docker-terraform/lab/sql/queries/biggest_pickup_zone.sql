WITH grouped_totals AS 
    (
        SELECT PULocationID, SUM(total_amount) AS total_amount 
        FROM green_tripdata_2025_11 GROUP BY PULocationID
        ORDER BY total_amount DESC
    )


SELECT LocationID, Borough, Zone, service_zone, total_amount 
FROM grouped_totals
LEFT JOIN taxi_zone_lookup
ON PULocationID = LocationID
LIMIT 10;