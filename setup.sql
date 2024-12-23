-- Create the external table from the files in the bucket
CREATE OR REPLACE EXTERNAL TABLE `dezc_green_taxi.green_external`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://dezc-green-taxi/green/green_tripdata_2022-*.parquet']
);

-- Materialize the table in BigQuery
CREATE OR REPLACE TABLE `dezc_green_taxi.green`
AS
  SELECT *
  FROM `dezc_green_taxi.green_external`;