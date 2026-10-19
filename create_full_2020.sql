CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`full_2020` (
  `latitude` float,
  `longitude` float,
  `population` float
)
PARTITIONED BY (`month` string, `country` string, `type` string)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION 's3://dataforgood-fb-data/csv/'
TBLPROPERTIES ('skip.header.line.count'='1');

MSCK REPAIR TABLE `full_2020`;
