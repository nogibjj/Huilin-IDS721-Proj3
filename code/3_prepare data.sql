-- Databricks notebook source
-- MAGIC %md
-- MAGIC 3. Prepare raw data and write to Delta Lake

-- COMMAND ----------

CREATE OR REPLACE TABLE
  pipeline_prepared_song_data (
    artist_id STRING,
    artist_name STRING,
    duration DOUBLE,
    release STRING,
    tempo DOUBLE,
    time_signature DOUBLE,
    title STRING,
    year DOUBLE,
    processed_time TIMESTAMP
  );

INSERT INTO
  pipeline_prepared_song_data
SELECT
  artist_id,
  artist_name,
  duration,
  release,
  tempo,
  time_signature,
  title,
  year,
  current_timestamp()
FROM
  pipeline_raw_song_data
