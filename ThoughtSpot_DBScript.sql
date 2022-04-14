/*
Database "jira_analytics" 
*/
CREATE DATABASE "jira_analytics";
USE "jira_analytics";
/*
Schema "falcon_default_schema" 
*/
CREATE SCHEMA "falcon_default_schema";

/*
Table "ISSUE" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE" (
   "ID" VARCHAR(16777216),
   "ASSIGNEE_ACCOUNT_ID" VARCHAR(16777216),
   "CREATOR_ACCOUNT_ID" VARCHAR(16777216),
   "PARENT_ISSUE_ID" VARCHAR(16777216),
   "REPORTER_ACCOUNT_ID" VARCHAR(16777216),
   "ISSUE_TYPE_ID" VARCHAR(16777216),
   "ISSUE_TYPE_NAME" VARCHAR(16777216),
   "PRIORITY_ID" VARCHAR(16777216),
   "PROJECT_ID" VARCHAR(16777216),
   "RESOLUTION_ID" VARCHAR(16777216),
   "STATUS_ID" VARCHAR(16777216),
   "STATUS_NAME" VARCHAR(16777216),
   "AGGREGATE_PROGRESS_PROGRESS" DOUBLE,
   "AGGREGATE_PROGRESS_TOTAL" DOUBLE,
   "AGGREGATE_TIME_ESTIMATE" DOUBLE,
   "AGGREGATE_TIME_SPENT" DOUBLE,
   "CREATED" DATETIME,
   "DESCRIPTION"  VARCHAR(16777216),
   "DUE_DATE"  VARCHAR(16777216),
   "KEY"  VARCHAR(16777216),
   "LAST_VIEWED" DATETIME,
   "PROGRESS_PROGRESS" DOUBLE,
   "PROGRESS_TOTAL" DOUBLE,
   "RESOLUTION_DATE" DATETIME,
   "STATUS_CATEGORY_CHANGE_DATE" DATETIME,
   "SUMMARY"  VARCHAR(16777216),
   "TIME_SPENT" DOUBLE,
   "TIME_ORIGINAL_ESTIMATE" DOUBLE,
   "TIME_ESTIMATE" DOUBLE,
   "UPDATED" DATETIME,
   "VOTES_HAS_VOTED" BOOL,
   "VOTES_VOTES" DOUBLE,
   "WATCHES_IS_WATCHING" BOOL,
   "WATCHES_WATCH_COUNT" DOUBLE,
   "WORK_RATIO" DOUBLE,
   "ASSIGNEE" VARCHAR(16777216),
   "CREATOR" VARCHAR(16777216),
   "REPORTER" VARCHAR(16777216),
   "PRIORITY_NAME" VARCHAR(16777216),
   "STATUS_CATEGORY_NAME" VARCHAR(16777216),
   "RESOLUTION_NAME" VARCHAR(16777216)
);


/*
Table "ISSUE Worklog" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_WORKLOG" (
    "ID" VARCHAR(16777216),
    "AUTHOR_ACCOUNT_ID" VARCHAR(16777216),
    "ISSUE_ID" VARCHAR(16777216),
    "UPDATE_AUTHOR_ACCOUNT_ID" VARCHAR(16777216),
    "COMMENT" VARCHAR(16777216),
    "CREATED" DATETIME,
    "STARTED" DATETIME,
    "TIME_SPENT" VARCHAR(16777216),
    "TIME_SPENT_SECONDS" DOUBLE,
    "UPDATED" DATETIME
);

/*
Table "ISSUE COMMENT" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_COMMENT" (
    "ID" VARCHAR(16777216),
    "AUTHOR_ACCOUNT_ID" VARCHAR(16777216),
    "ISSUE_ID" VARCHAR(16777216),
    "UPDATE_AUTHOR_ACCOUNT_ID" VARCHAR(16777216),
    "BODY" VARCHAR(16777216),
    "CREATED" DATETIME,
    "UPDATED" DATETIME
);


/*
Table "ISSUE Label" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_LABEL" (
    "ISSUE_ID" VARCHAR(16777216),
    "LABEL" VARCHAR(16777216)
);


/*
Table "ISSUE Link" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_LINK" (
    "ID" VARCHAR(16777216),
    "ISSUE_ID" VARCHAR(16777216),
    "LINKED_ISSUE_ID" VARCHAR(16777216),
    "ISSUE_LINK_TYPE_ID" VARCHAR(16777216),
    "DIRECTION" VARCHAR(16777216),
    "INWARD" VARCHAR(16777216),
    "LINK_TYPE_NAME" VARCHAR(16777216),
    "OUTWARD" VARCHAR(16777216),
    "ISSUE_KEY" VARCHAR(16777216),
    "LINKED_ISSUE_KEY" VARCHAR(16777216)
);


/*
Table "ISSUE_CHANGE_LOG" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_CHANGE_LOG" (
    "ID" VARCHAR(16777216),
    "ISSUE_ID" VARCHAR(16777216),
    "AUTHOR_ACCOUNT_ID" VARCHAR(16777216),
    "CREATED" DATETIME,
    "FIELD" VARCHAR(16777216),
    "FIELDTYPE" VARCHAR(16777216),
    "FROM_VALUE" VARCHAR(16777216),
    "TO_VALE" VARCHAR(16777216),
    "FROM_STRING" VARCHAR(16777216),
    "TO_STRING" VARCHAR(16777216),
    "AUTHOR" VARCHAR(16777216)
);

/*
Table "ISSUE Watcher" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_WATCHER" (
    "ISSUE_ID" VARCHAR(16777216),
    "ACCOUNT_ID" VARCHAR(16777216),
    "ACTIVE" BOOL,
    "DISPLAY_NAME" VARCHAR(16777216)
);


/*
Table "BOARD" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_BOARD" (
    "ID" DOUBLE,
    "NAME" VARCHAR(16777216),
    "TYPE" VARCHAR(16777216)
);


/*
Table "BOARD ISSUE" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_BOARD_ISSUE" (
    "ISSUE_ID" VARCHAR(16777216),
    "BOARD_ID" DOUBLE
);




/*
Table "BOARD PROJECT" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_BOARD_PROJECT" (
    "PROJECT_ID" VARCHAR(16777216),
    "BOARD_ID" DOUBLE
);




/*
Table "User" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_USER" (
    "ACCOUNT_ID" VARCHAR(16777216),
    "ACCOUNT_TYPE" VARCHAR(16777216),
    "ACTIVE" BOOL,
    "DISPLAY_NAME" VARCHAR(16777216),
    "EMAIL_ADDRESS" VARCHAR(16777216),
    "LOCALE" VARCHAR(16777216),
    "TIME_ZONE" VARCHAR(16777216)
);


/*
Table "PROJECT" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_PROJECT" (
    "ID" VARCHAR(16777216),
    "LEAD_ACCOUNT_ID" VARCHAR(16777216),
    "PROJECT_CATEGORY_ID" VARCHAR(16777216),
    "ASSIGNEE_TYPE" VARCHAR(16777216),
    "IS_PRIVATE" BOOL,
    "KEY" VARCHAR(16777216),
    "NAME" VARCHAR(16777216),
    "PROJECT_TYPE_KEY" VARCHAR(16777216),
    "ROLES" VARCHAR(16777216),
    "SIMPLIFIED" BOOL,
    "STYLE" VARCHAR(16777216),
    "URL" VARCHAR(16777216),
    "UUID" VARCHAR(16777216),
    "PROJECT_CATEGORY_NAME" VARCHAR(16777216),
    "LEAD_USER" VARCHAR(16777216)
);

/*
Table "INTERPROJECT_DEPENDANCIES" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_INTERPROJECT_DEPENDANCIES" (
    "LINK_TYPE_NAME" VARCHAR(16777216),
    "DIRECTION" VARCHAR(16777216),
    "ISSUE_ID" VARCHAR(16777216),
    "LINKED_ISSUE_ID" VARCHAR(16777216),
    "ISSUE_KEY" VARCHAR(16777216),
    "LINKED_ISSUE_KEY" VARCHAR(16777216),
    "ISSUE_STATUS_CATEGORY_NAME" VARCHAR(16777216),
    "LINKED_ISSUE_STATUS_CATEGORY_NAME" VARCHAR(16777216)
);

/*
Table "ISSUE_CURRENT_STATUS" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_CURRENT_STATUS" (
    "ROW_COUNTER" DOUBLE,
    "ISSUE_ID" VARCHAR(16777216),
    "CURRENT_STATUS" VARCHAR(16777216),
    "DATE_UPDATED" DATETIME
);

/*
Table "ISSUE_STATUS_CHANGE" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_STATUS_CHANGE" (
    "ROW_COUNTER" DOUBLE,
    "ISSUE_ID" VARCHAR(16777216),
    "FROM_STATUS" VARCHAR(16777216),
    "TO_STATUS" VARCHAR(16777216),
    "END_DATE" DATETIME,
    "START_DATE" DATETIME
);

/*
Table "ISSUE_TYPE_CHANGES" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_ISSUE_TYPE_CHANGES" (
    "ROW_COUNTER" DOUBLE,
    "ISSUE_ID" VARCHAR(16777216),
    "CURRENT_ISSUE_TYPE" VARCHAR(16777216),
    "ISSUE_TYPE_DATE_CREATED" DATETIME
);




ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_WORKLOG" ADD RELATIONSHIP "WorkLog_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_WORKLOG"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_WORKLOG" ADD RELATIONSHIP "WorkLog_AUTHOR_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE_WORKLOG"."AUTHOR_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_COMMENT" ADD RELATIONSHIP "COMMENT_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_COMMENT"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_COMMENT" ADD RELATIONSHIP "COMMENT_AUTHOR_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE_COMMENT"."AUTHOR_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_COMMENT" ADD RELATIONSHIP "COMMENT_UPDATE_AUTHOR_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE_COMMENT"."UPDATE_AUTHOR_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_LABEL" ADD RELATIONSHIP "COMMENT_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_LABEL"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_LINK" ADD RELATIONSHIP "Link_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_LINK"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_LINK" ADD RELATIONSHIP "Link_Linked_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_LINK"."LINKED_ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" ADD RELATIONSHIP "ISSUE_Assignee" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE"."ASSIGNEE_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" ADD RELATIONSHIP "ISSUE_Creator" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE"."CREATOR_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" ADD RELATIONSHIP "ISSUE_Reporter" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE"."REPORTER_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" ADD RELATIONSHIP "ISSUE_Project" WITH "jira_analytics"."falcon_default_schema"."JIRA_PROJECT" AS  "JIRA_ISSUE"."PROJECT_ID" = "JIRA_PROJECT"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_CHANGE_LOG" ADD RELATIONSHIP "ChangeLog_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_CHANGE_LOG"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_CHANGE_LOG" ADD RELATIONSHIP "ChangeLog_AUTHOR_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE_CHANGE_LOG"."AUTHOR_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_WATCHER" ADD RELATIONSHIP "ISSUE_Watcher_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_ISSUE_WATCHER"."ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_WATCHER" ADD RELATIONSHIP "ISSUE_Watcher_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_WATCHER"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_BOARD_ISSUE" ADD RELATIONSHIP "BOARD_ISSUE_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_BOARD_ISSUE"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_BOARD_ISSUE" ADD RELATIONSHIP "BOARD_ISSUE_BOARD" WITH "jira_analytics"."falcon_default_schema"."JIRA_BOARD" AS  "JIRA_BOARD_ISSUE"."BOARD_ID" = "JIRA_BOARD"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_BOARD_PROJECT" ADD RELATIONSHIP "BOARD_PROJECT_PROJECT" WITH "jira_analytics"."falcon_default_schema"."JIRA_PROJECT" AS  "JIRA_BOARD_PROJECT"."PROJECT_ID" = "JIRA_PROJECT"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_BOARD_PROJECT" ADD RELATIONSHIP "BOARD_PROJECT_BOARD" WITH "jira_analytics"."falcon_default_schema"."JIRA_BOARD" AS  "JIRA_BOARD_PROJECT"."BOARD_ID" = "JIRA_BOARD"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_PROJECT" ADD RELATIONSHIP "PROJECT_Lead_User" WITH "jira_analytics"."falcon_default_schema"."JIRA_USER" AS  "JIRA_PROJECT"."LEAD_ACCOUNT_ID" = "JIRA_USER"."ACCOUNT_ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_INTERPROJECT_DEPENDANCIES" ADD RELATIONSHIP "INTERPROJECT_DEPENDANCIES_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_INTERPROJECT_DEPENDANCIES"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_INTERPROJECT_DEPENDANCIES" ADD RELATIONSHIP "INTERPROJECT_DEPENDANCIES_LINKED_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_INTERPROJECT_DEPENDANCIES"."LINKED_ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_CURRENT_STATUS" ADD RELATIONSHIP "CURRENT_STATUS_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_CURRENT_STATUS"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_STATUS_CHANGE" ADD RELATIONSHIP "STATUS_CHANGE_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_STATUS_CHANGE"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_TYPE_CHANGES" ADD RELATIONSHIP "ISSUE_TYPE_CHANGE_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_ISSUE_TYPE_CHANGES"."ISSUE_ID" = "JIRA_ISSUE"."ID" ;



/*Custom User Managed Tables*/

/*
Table "STATUS_GROUP" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_STATUS_GROUP" (
    "STATUS_CATEGORY" VARCHAR(16777216),
    "STATUS_GROUP" VARCHAR(16777216)
);


/*
Table "STATUS_GROUP_ORDER" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_STATUS_GROUP_ORDER" (
    "ORDER" DOUBLE,
    "STATUS_GROUP" VARCHAR(16777216)
);

/*
Table "JIRA_URL" 
*/
CREATE TABLE "falcon_default_schema"."JIRA_URL" (
    "URL" VARCHAR(16777216),
    "PROJECT_ID" VARCHAR(16777216)
);


ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_STATUS_GROUP_ORDER" ADD RELATIONSHIP "STATUS_GROUP_ORDER_STATUS_GROUP" WITH "jira_analytics"."falcon_default_schema"."JIRA_STATUS_GROUP" AS  "JIRA_STATUS_GROUP_ORDER"."STATUS_GROUP" = "JIRA_STATUS_GROUP"."STATUS_GROUP" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_STATUS_GROUP" ADD RELATIONSHIP "STATUS_GROUP_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_ISSUE" AS  "JIRA_STATUS_GROUP"."STATUS_CATEGORY" = "JIRA_ISSUE"."STATUS_CATEGORY_NAME" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_URL" ADD RELATIONSHIP "URL_PROJECT" WITH "jira_analytics"."falcon_default_schema"."JIRA_PROJECT" AS  "JIRA_URL"."PROJECT_ID" = "JIRA_PROJECT"."ID" ;
ALTER TABLE "jira_analytics"."falcon_default_schema"."JIRA_ISSUE_STATUS_CHANGE" ADD RELATIONSHIP "JIRA_ISSUE_STATUS_CHANGE_STATUS_GROUP_ISSUE" WITH "jira_analytics"."falcon_default_schema"."JIRA_STATUS_GROUP" AS  "JIRA_ISSUE_STATUS_CHANGE"."TO_STATUS" = "JIRA_STATUS_GROUP"."STATUS_CATEGORY" ;

