-- queries/08_revenue_by_payment_type_2022.sql
-- Total revenue and average ticket by payment type (2022)
SELECT
  payment_type,
  ROUND(SUM(total_amount), 2)      AS total_revenue,
  COUNT(*)                         AS trips,
  ROUND(AVG(total_amount), 2)      AS avg_ticket,
  ROUND(SUM(tip_amount), 2)        AS total_tips
FROM
  `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE
  total_amount > 0
GROUP BY
  payment_type
ORDER BY
  total_revenue DESC;
