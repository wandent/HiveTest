DROP TABLE IF EXISTS airlines;

CREATE TABLE airlines
(
    code string, 
    description string
    )     
  ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",   
   "escapeChar"    = "\\"
)  
stored as textfile
LOCATION 'wasb://airline@wtnstorage.blob.core.windows.net/airlines/'
TBLPROPERTIES('skip.header.line.count'='1');


LOAD DATA INPATH 'wasb://airline@wtnstorage.blob.core.windows.net/land/airlines' INTO TABLE airlines;


