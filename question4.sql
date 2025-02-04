-- How many records have a fare_amount of 0?

SELECT
  COUNT(*)
FROM
  dezc_3.yellow
WHERE
  fare_amount = 0;

-- 8333