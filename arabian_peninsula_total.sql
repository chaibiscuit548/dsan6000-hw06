SELECT
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) as integer) AS population
FROM full_2020
WHERE
  month='2019-06'
  AND country IN ('YEM', 'OMN', 'SAU')
  AND type='total_population';
