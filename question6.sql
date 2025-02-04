-- Write a query to retrieve the distinct VendorIDs between tpep_dropoff_timedate 03/01/2024 and 03/15/2024 (inclusive)
-- Use the materialized table you created earlier in your from clause and note the estimated bytes.
-- Now change the table in the from clause to the partitioned table you created for question 4 and note the estimated bytes processed.
-- What are these values?

SELECT COUNT(DISTINCT(VendorID))
FROM `dezc_3.yellow`
WHERE tpep_dropoff_datetime BETWEEN '2024-03-01' AND '2024-03-15';

SELECT COUNT(DISTINCT(VendorID))
FROM `dezc_3.yellow_partition`
WHERE tpep_dropoff_datetime BETWEEN '2024-03-01' AND '2024-03-15';

-- 310.24 MB for non-partitioned table and 26.84 MB for the partitioned table
