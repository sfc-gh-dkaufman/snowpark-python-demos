CREATE DATABASE IF NOT EXISTS IMDB;
USE DATABASE IMDB;
USE SCHEMA PUBLIC;
CREATE TABLE IF NOT EXISTS TRAIN_DATASET (
	REVIEW STRING,
	SENTIMENT STRING
);
CREATE TABLE IF NOT EXISTS TEST_DATASET (
	REVIEW STRING,
	SENTIMENT STRING
);
CREATE FILE FORMAT IF NOT EXISTS CSV_COMMA_DELIMITER;
ALTER FILE FORMAT CSV_COMMA_DELIMITER SET COMPRESSION = 'AUTO' FIELD_DELIMITER = ',' RECORD_DELIMITER = '\n' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\042' TRIM_SPACE = FALSE ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE ESCAPE = 'NONE' ESCAPE_UNENCLOSED_FIELD = '\134' DATE_FORMAT = 'AUTO' TIMESTAMP_FORMAT = 'AUTO' NULL_IF = ('\\N');
CREATE WAREHOUSE IF NOT EXISTS DEMO_WH WAREHOUSE_SIZE=MEDIUM INITIALLY_SUSPENDED=TRUE;
CREATE STAGE IF NOT EXISTS MODELS;