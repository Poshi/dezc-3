-- Write a query to retrieve the PULocationID form the table (not the external table) in BigQuery.
-- Now write a query to retrieve the PULocationID and DOLocationID on the same table.
-- Why are the estimated number of Bytes different?

SELECT
  PULocationID
FROM
  dezc_3.yellow;

-- This will read 155.12 MB.

SELECT
  PULocationID,
  DOLocationID
FROM
  dezc_3.yellow;

-- This will read 310.24 MB.

-- BigQuery is a columnar database, and it only scans the specific columns requested in the query.
-- Querying two columns (PULocationID, DOLocationID) requires reading more data than querying one column (PULocationID),
-- leading to a higher estimated number of bytes processed.