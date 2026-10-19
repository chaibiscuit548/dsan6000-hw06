SELECT
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) as integer) AS population
FROM full_2020
WHERE
  month='2019-06'
  AND country='SAU'
  AND type='total_population'
  AND ST_Within(
    ST_Point(longitude, latitude),
    ST_Polygon('POLYGON ((49.55 27.1,49.85 26.95,50.25 26.75,50.15 26.55,50.25 26.25,50.15 26.0,49.95 25.55,49.65 25.15,49.35 25.25,49.4 25.65,49.55 25.95,49.65 26.4,49.4 26.85,49.55 27.1))')
  );
