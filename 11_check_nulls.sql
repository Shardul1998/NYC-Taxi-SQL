-- queries/11_check_nulls.sql
SELECT
  SUM(CASE WHEN pickup_datetime IS NULL THEN 1 ELSE 0 END) AS null_pickup_datetime,
  SUM(CASE WHEN dropoff_datetime IS NULL THEN 1 ELSE 0 END) AS null_dropoff_datetime,
  SUM(CASE WHEN passenger_count IS NULL THEN 1 ELSE 0 END) AS null_passenger_count,
  SUM(CASE WHEN fare_amount IS NULL THEN 1 ELSE 0 END) AS null_fare_amount
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;
