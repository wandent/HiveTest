# Repo for testing Hive ACID tables and their integration with current versions of HDInsights and Databricks runtime

# HD Insight Cluster Data

https://wtnhdinsighthive.azurehdinsight.net

user: wandent
pass: Jxxxx

Hive Metastore
server:wtnhive.database.windows.net
db:wtnhive

SQL Authentication:
user: wandent
pass: Jxxxx

Connect - ssh
ssh sshuser@wtnhdinsighthive-ssh.azurehdinsight.net

# TEST wasb connectivity

from ssh

hadoop fs -ls wasb://mycontainer@myaccount.blob.core.windows.net/

hadoop fs -mkdir wasb://mycontainer@myaccount.blob.core.windows.net/testDir

hadoop fs -put testFile wasb://mycontainer@myaccount.blob.core.windows.net/testDir/testFile

hadoop fs -cat wasb://mycontainer@myaccount.blob.core.windows.net/testDir/testFile
test file content
https://docs.hortonworks.com/HDPDocuments/HDP3/HDP-3.1.0/bk_cloud-data-access/content/wasb-get-started.html

---


## Files:

### Create_PerformanceData.hql
* Creates the performance data table from parquet files uploaded to the raw folder

### Create_Airlines.hql
* Creates the Airlines table from the csv file uploaded to Raw, consider the quotes for strings

### Create_Airports.hql
* Creates the Airports table from the csv file uploaded to Raw, consider the quotes for strings



