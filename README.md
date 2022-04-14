# TML BLOCKS - Jira

With the JIRA TML Blocks, managers have access to the huge wealth of operational and team performance data locked within JIRA, all with the ease of ThoughtSpot to be able to search, drill in and automatically discover their own data insights.

 
 # Artifacts 
 
 ## Snowflake DDL
 - SNOWFLAKE_DB_CREATE_SCRIPT.sql
 - SNOWFLAKE_VIEWS.sql

## Table Information
- JIRA_STATUS_GROUP_ORDER_R2.csv
- JIRA_STATUS_GROUP_R2.csv
- JIRA_URL_R2.csv

## ThoughtSpot SQL Script 
- ThoughtSpot_DBScript.sql

## TML Files 
- JIRA R2 - Issue Management.pinboard (2).tml
- JIRA R2.0.worksheet (1).tml
 
 # Implementation Steps 
 
**SnowFlake**
- Use the DDL Scripts to create the tables and views in SnowFlake. 

**Extracting Jira Data**
- Refer to the "Table Information" for the corresponding Tables and Data Items. 

**ThoughtSpot**
- Using Embrace connect to the Views specified in the Table Information csv files.
- Execute the ThoughtSpot script to create the relationships in ThoughtSpot

**TML BLocks**

- Import the workshop zip "JIRA R2 - Issue Management.pinboard (2).tml" into Thoughtspot. 
- Import the pinboard zip "JIRA R2.0.worksheet (1).tmlp" into Thoughtspot. 

# Liveboard Screenshots 

## Issue Management Liveboard 

<img width="857" alt="Screen Shot 2022-04-13 at 11 23 00 PM" src="https://user-images.githubusercontent.com/102629468/163326204-27258f2f-e803-47e7-b871-e8c26f426df0.png">
<img width="1074" alt="Screen Shot 2022-04-13 at 11 23 08 PM" src="https://user-images.githubusercontent.com/102629468/163326210-3fe596f4-8064-416a-914b-6d9b5d44598b.png">
<img width="1031" alt="Screen Shot 2022-04-13 at 11 23 19 PM" src="https://user-images.githubusercontent.com/102629468/163326212-a4599568-1b68-4f7c-aa8d-f9ba4a4113e6.png">

