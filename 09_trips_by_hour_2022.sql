-- queries/09_trips_by_hour_2022.sql
-- Trip volume by hour of the day for 2022
SELECT
  EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
  COUNT(*) AS total_trips,
  ROUND(AVG(total_amount), 2) AS avg_fare
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
  total_amount > 0
GROUP BY
  pickup_hour
ORDER BY
  pickup_hour;
