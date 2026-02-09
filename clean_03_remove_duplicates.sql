-- Deduplicate candidate rows using a stable key + QUALIFY
SELECT *
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
QUALIFY
  ROW_NUMBER() OVER (
    PARTITION BY pickup_datetime, dropoff_datetime, PULocationID, DOLocationID, passenger_count
    ORDER BY trip_distance DESC
  ) = 1;
