-- What is the best strategy to make an optimized table in Big Query
-- if your query will always filter based on tpep_dropoff_timedate
-- and order the results by VendorID (Create a new table with this strategy)

CREATE OR REPLACE TABLE `dezc_3.yellow_partition`
PARTITION BY DATE(tpep_dropoff_timedate)
CLUSTER BY VendorID AS (
  SELECT * FROM `dezc_3.yellow`
);

-- Partition by tpep_dropoff_timedate and Cluster on VendorID
