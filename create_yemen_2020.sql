CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`yemen_2020` (
  `latitude` float,
  `longitude` float,
  `population` float,
  `adm1` string
)
PARTITIONED BY (`type` string)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION 's3://dsan6000-hrsl/yemen-2020/'
TBLPROPERTIES ('skip.header.line.count'='1');

MSCK REPAIR TABLE `yemen_2020`;
