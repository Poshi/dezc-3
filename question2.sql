-- Write a query to count the distinct number of PULocationIDs for the entire dataset on both the tables.
-- What is the estimated amount of data that will be read when this query is executed on the External Table and the Table?
SELECT COUNT(DISTINCT(PULocationID))
FROM `dezc_3.yellow`;

SELECT COUNT(DISTINCT(PULocationID))
FROM `dezc_3.yellow_external`;

-- 0 MB for the External Table and 155.12 MB for the Materialized Table
