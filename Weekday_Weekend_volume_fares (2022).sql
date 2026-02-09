-- Weekday vs Weekend trip volume and fares (2022)
-- DAYOFWEEK: 1=Sunday ... 7=Saturday
SELECT
  EXTRACT(DAYOFWEEK FROM pickup_datetime)                         AS dow_num,
  FORMAT_TIMESTAMP('%A', pickup_datetime)                          AS weekday,
  IF(EXTRACT(DAYOFWEEK FROM pickup_datetime) IN (1,7), 'Weekend', 'Weekday') AS day_type,
  COUNT(*)                                                         AS total_trips,
  ROUND(AVG(total_amount), 2)                                      AS avg_fare
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
  total_amount > 0
GROUP BY
  dow_num, weekday, day_type
ORDER BY
  dow_num;
