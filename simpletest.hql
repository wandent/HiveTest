DROP TABLE testhive;

CREATE TABLE testhive
(
id string, 
custid string, 
custdate string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
stored as textfile;

--select * from testhive

-- INSERT INTO testhive(id, custid, custdate) values('1', '1', '1/1/2011')
LOAD DATA INPATH 'wasb://landing@wtnstorage.blob.core.windows.net/test/*.csv' INTO TABLE testhive;