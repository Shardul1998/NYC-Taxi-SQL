-- queries/Keep_only_plausible_trips.sql
SELECT
  pickup_datetime, dropoff_datetime,
  pickup_location_id, dropoff_location_id,
  passenger_count, trip_distance,
  fare_amount, tip_amount, total_amount,
  payment_type
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_*`
WHERE _TABLE_SUFFIX BETWEEN '2019' AND '2023'
  AND pickup_datetime IS NOT NULL
  AND dropoff_datetime IS NOT NULL
  AND trip_distance BETWEEN 0.1 AND 100
  AND fare_amount > 0
  AND total_amount > 0
  AND passenger_count BETWEEN 1 AND 6;
