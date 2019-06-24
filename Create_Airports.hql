DROP TABLE IF EXISTS airports;

CREATE TABLE airports
(
    code string, 
    description string
    ) 
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",   
   "escapeChar"    = "\\"
)  
STORED AS TEXTFILE
LOCATION 'wasb://airline@wtnstorage.blob.core.windows.net/airports/'
TBLPROPERTIES('skip.header.line.count'='1');

LOAD DATA INPATH 'wasb://airline@wtnstorage.blob.core.windows.net/land/airports' INTO TABLE airports