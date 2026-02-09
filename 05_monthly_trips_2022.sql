-- queries/05_monthly_trips_2022.sql
SELECT
  FORMAT_TIMESTAMP('%Y-%m', pickup_datetime) AS month,
  COUNT(*) AS total_trips
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
GROUP BY
  month
ORDER BY
  month;
