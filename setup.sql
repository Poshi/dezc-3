-- Create the external table from the files in the bucket
CREATE OR REPLACE EXTERNAL TABLE `dezc_3.yellow_external`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://dezc-ny_taxi_fhv/yellow_tripdata_2024-*.parquet']
);

-- Materialize the table in BigQuery
CREATE OR REPLACE TABLE `dezc_3.yellow`
AS
  SELECT *
  FROM `dezc_3.yellow_external`;