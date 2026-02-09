-- queries/13_check_duplicates.sql
SELECT
  pickup_datetime,
  dropoff_datetime,
  pickup_location_id,
  dropoff_location_id,
  COUNT(*) AS duplicate_count
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
GROUP BY
  pickup_datetime, dropoff_datetime, pickup_location_id, dropoff_location_id
HAVING
  COUNT(*) > 1
ORDER BY
  duplicate_count DESC;
