-- queries/04_trips_by_payment_type.sql
SELECT
  payment_type,
  COUNT(*) AS total_trips
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
GROUP BY
  payment_type
ORDER BY
  total_trips DESC;
