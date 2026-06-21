WITH november_pickups AS (
    SELECT PULocationID, DOLocationID, tip_amount
    FROM green_tripdata_2025_11
    WHERE lpep_pickup_datetime >= '2025-11-01'
    AND lpep_pickup_datetime < '2025-12-01'
),

nov_east_harlem_pickups AS (
    SELECT PULocationID, DOLocationID, tip_amount
    FROM november_pickups AS np
    JOIN taxi_zone_lookup AS tzl
        ON np.PULocationID = tzl.LocationID
        AND tzl.Zone = 'East Harlem North'
),

dropoff_max_tips AS (
    SELECT DOLocationID, MAX(tip_amount) AS max_tip
    FROM nov_east_harlem_pickups
    GROUP BY DOLocationID
    ORDER BY max_tip DESC
),

max_dropoff_tip AS (
    SELECT DOLocationID, max_tip
    FROM dropoff_max_tips
    LIMIT 1
)

SELECT mdt.DOLocationID, tzl.Zone, mdt.max_tip
FROM max_dropoff_tip AS mdt
LEFT JOIN taxi_zone_lookup AS tzl
    ON mdt.DOLocationID = tzl.LocationID;