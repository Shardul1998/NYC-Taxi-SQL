-- Map payment_type codes to readable labels
WITH base AS (
  SELECT payment_type FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022` LIMIT 10
)
SELECT
  payment_type,
  CASE CAST(payment_type AS STRING)
    WHEN '1' THEN 'Credit Card'
    WHEN '2' THEN 'Cash'
    WHEN '3' THEN 'No Charge'
    WHEN '4' THEN 'Dispute'
    WHEN '5' THEN 'Unknown'
    WHEN '6' THEN 'Voided Trip'
    ELSE 'Other'
  END AS payment_label
FROM base;
