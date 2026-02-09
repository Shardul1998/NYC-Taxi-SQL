-- queries/12_check_invalid_values.sql
SELECT
  COUNTIF(fare_amount < 0) AS negative_fares,
  COUNTIF(trip_distance < 0) AS negative_distances,
  COUNTIF(passenger_count <= 0) AS zero_or_negative_passengers
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;
