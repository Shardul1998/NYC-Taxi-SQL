-- queries/06_avg_fare_per_month_2022.sql
SELECT
  FORMAT_TIMESTAMP('%Y-%m', pickup_datetime) AS month,
  ROUND(AVG(fare_amount), 2) AS avg_fare
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
  fare_amount > 0
GROUP BY
  month
ORDER BY
  month;
