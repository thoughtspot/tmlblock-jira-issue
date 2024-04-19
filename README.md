# TML BLOCKS - Jira

With the JIRA TML Blocks, managers have access to the huge wealth of operational and team performance data locked within JIRA, all with the ease of ThoughtSpot to be able to search, drill in and automatically discover their own data insights.They are built on ThoughtSpot Modeling Language (TML) Blocks, which are pre-built pieces of code that are easy to download and implement directly from the product.

The Jira Issue Management SpotApp mimics the Jira data model. When you deploy it, ThoughtSpot creates several Worksheets, Answers, and Liveboards, based on your Jira data in your cloud data warehouse.

Use the Jira Issue Management SpotApp to track the number of Jira tickets submitted, and the efficiency of how they are resolved. This can help you determine what part of the workflow causes the most delays, and how each team member is performing at resolving tickets.
 
 # Artifacts 

- [**Jira Issue Management TML Blocks.zip**](https://github.com/thoughtspot/tmlblock-jira-issue/blob/main/Jira%20Issue%20Management%20TML%20Blocks.zip): These tml files contains templates for tables, worksheets, answers, and liveboards for the Jira SpotApp
- [**Jira Issue Management_schema.csv**](https://github.com/thoughtspot/tmlblock-jira-issue/blob/main/Jira%20Issue%20Management_schema.csv): The following table describes the schema
- [ThoughtSpot DBScript.sql](https://github.com/thoughtspot/tmlblock-jira-issue/blob/main/ThoughtSpot_DBScript.sql): Access required sql here


# Prerequisites for Deploying the Jira Issue Management SpotApp

Before you can deploy the Jira Issue Management SpotApp, you must complete the following prerequisites:

## Review and Sync Data

- **Review Required Data**: Examine the required tables and columns for the SpotApp.
- **Ensure Column Compatibility**: Ensure that your columns match the required column type listed in the schema for your SpotApp.
- **Sync Data**: Synchronize all tables and columns from Jira to your cloud data warehouse. While only specific tables and columns may be required, ThoughtSpot recommends syncing all tables and columns from Jira to ensure comprehensive data availability. The columns can be Jira’s out-of-the-box columns, or any custom columns you are using.
- **ETL/ELT and Team Collaboration**: If you are using an ETL/ELT tool or working with another team in your organization, sync all columns from the tables listed in the SpotApp.

## Credentials and Permissions

- **Obtain Credentials**: Obtain the necessary credentials and SYSADMIN privileges to connect to your cloud data warehouse. Ensure the data warehouse contains the data ThoughtSpot will use to create Answers, Liveboards, and Worksheets. Refer to the connection reference for your cloud data warehouse for information about required credentials.
- **Unique Connection Name**: Ensure that the connection name for each new SpotApp is unique.
- **Administrator Access to Jira**: Maintain administrator access to manage Jira resources.

## Access to Jira Tables

Ensure access to the following Jira tables in your cloud data warehouse for more details, refer to the Jira Issue Management SpotApp schema:

- `JIRA_ISSUES`
- `ISSUE`
- `PROJECT`
- `PRIORITY`
- `RESOLUTION`
- `STATUS`
- `ISSUE_TYPE`
- `USER`
- `ISSUE_FIELD_HISTORY`
- `WORKLOG`

## Run SQL Commands

Execute the necessary SQL commands in your cloud data warehouse to properly configure the SpotApp. For specific commands, refer to the "Run SQL commands" section.

The SQL files can be found here: [ThoughtSpot DBScript.sql](https://github.com/thoughtspot/tmlblock-jira-issue/blob/main/ThoughtSpot_DBScript.sql).
 
 # Implementation Steps 
 Once you have downloaded the Zip file and have verified its contents, the implementation steps are as follows:

1. Log into your ThoughtSpot instance and create an Embrace connection to all of the relevant views.
2. Import the TML for the worksheets and verify that it has all been imported without any errors.
3. Import the TML for the pinboard and verify that it has all been imported without any errors.
4. You are ready to start searching your Jira data!

For detailed instructions on how to import TML files, refer to the [ThoughtSpot documentation](https://docs.thoughtspot.com/software/latest/tml-import-export-multiple).


# Liveboard Screenshots 

## Issue Management Liveboard 

<img width="857" alt="Screen Shot 2022-04-13 at 11 23 00 PM" src="https://user-images.githubusercontent.com/102629468/163326204-27258f2f-e803-47e7-b871-e8c26f426df0.png">
<img width="857" alt="Screen Shot 2022-04-13 at 11 23 08 PM" src="https://user-images.githubusercontent.com/102629468/163326210-3fe596f4-8064-416a-914b-6d9b5d44598b.png">
<img width="857" alt="Screen Shot 2022-04-13 at 11 23 19 PM" src="https://user-images.githubusercontent.com/102629468/163326212-a4599568-1b68-4f7c-aa8d-f9ba4a4113e6.png">

