DROP TABLE IF EXISTS PerformanceData;

CREATE TABLE PerformanceData
(
FlightDate string, 
UniqueCarrier string, 
TailNum string, 
Origin string, 
OriginCityName string, 
Dest string, 
DestCityName string, 
Cancelled string, 
CancellationCode string, 
Diverted string)
stored as parquet
LOCATION 'wasb://airline@wtnstorage.blob.core.windows.net/performancedata/';

LOAD DATA INPATH 'wasb://airline@wtnstorage.blob.core.windows.net/raw/' INTO TABLE PerformanceData;
