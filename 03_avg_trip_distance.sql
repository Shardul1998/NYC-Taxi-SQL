SELECT
  ROUND(AVG(trip_distance), 2) AS avg_trip_distance
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;