-- queries/07_avg_distance_by_passenger_count.sql
SELECT
  passenger_count,
  ROUND(AVG(trip_distance), 2) AS avg_trip_distance
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
  trip_distance > 0
GROUP BY
  passenger_count
ORDER BY
  passenger_count;
