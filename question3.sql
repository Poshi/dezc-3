-- How many records have a fare_amount of 0?
SELECT COUNT(*)
FROM `dezc_green_taxi.green`
WHERE fare_amount=0;

-- 1622
