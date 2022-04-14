# TML BLOCKS - Jira

With the JIRA TML Blocks, managers have access to the huge wealth of operational and team performance data locked within JIRA, all with the ease of ThoughtSpot to be able to search, drill in and automatically discover their own data insights.

 
 # Artifacts 
 
 ## Snowflake DDL
 - DIM_DATE.csv
 - SNOWFLAKE_DB_CREATE_SCRIPT.sql
 - SNOWFLAKE_VIEWS.sql

## Extract Hubspot Data Table Documentation 
- HubSpot Data Extraction.pdf

## ThoughtSpot SQL Script 
- ThoughtSpot -Tables and Relationships v1.6.SQL

## TML Files 
- HubSpot - Worksheets.zip
- HubSpot - Liveboards .zip
 
 # Implementation Steps 
 
**SnowFlake**
- Use the DDL Scripts to create the tables and views in SnowFlake. (SnowFlakeTables Embrace v1.6.sql and SnowFlakeViews Embrace v1.6.sql)
- Using the API calls detailed in the Cloud Data Warehouse section of this guide load the data into the tables using your ETL.
- Load the dim_Date table from the CSV file provided

**Extracting Hubspot Data**
- Refer to the "Hubspot Data Extraction.pdf" for the Snowflake Table and the corresponding API Call and Data Items. 

**ThoughtSpot**
- Using Embrace connect to the Views specified in the Cloud Data Warehouse section of this guide.
- Execute the ThoughtSpot script to create the relationships in ThoughtSpot

**TML BLocks**

- Import the workshop zip "HubSpot - Worksheets.zip" into Thoughtspot. 
- Import the pinboard zip "HubSpot - Liveboards .zip" into Thoughtspot. 
