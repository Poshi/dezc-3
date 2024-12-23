-- What is the best strategy to make an optimized table in Big Query if your query will always order the results by PUlocationID and filter based on lpep_pickup_datetime? (Create a new table with this strategy
CREATE OR REPLACE TABLE `dezc_green_taxi.green_partition`
PARTITION BY DATE(lpep_pickup_datetime)
CLUSTER BY PUlocationID AS (
  SELECT * FROM `dezc_green_taxi.green`
);

-- Partition by lpep_pickup_datetime Cluster on PUlocationID
