-- Write a query to retrieve the distinct PULocationID between lpep_pickup_datetime 06/01/2022 and 06/30/2022 (inclusive)
-- Use the materialized table you created earlier in your from clause and note the estimated bytes. Now change the table in the from clause to the partitioned table you created for question 4 and note the estimated bytes processed. What are these values?
SELECT COUNT(DISTINCT(PULocationID))
FROM `dezc_green_taxi.green`
WHERE lpep_pickup_datetime BETWEEN '2022-06-01' AND '2022-06-30';

SELECT COUNT(DISTINCT(PULocationID))
FROM `dezc_green_taxi.green_partition`
WHERE lpep_pickup_datetime BETWEEN '2022-06-01' AND '2022-06-30';

-- 12.82 MB for non-partitioned table and 1.12 MB for the partitioned table
