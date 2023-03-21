# Building Data Pipeline Using Azure Databricks

In this project, we need to use a major Big Data system to perform a Data Engineering related task. The example systems could be: (AWS Athena, AWS Spark/EMR, AWS Sagemaker, Databricks, Snowflake). I plan to to use Azure Databricks, which is a Spark-based unified analytics platform running on Microsoft Azure.

## Plan
1. learning the architecture and components of Azure Databricks
2. setting up the Databricks environment
3. building an end-to-end data pipline
4. orchestrating the pipeline
5. using Databricks APIs and Delta Lake to build automated pipelines (optinal)

## Background
* Apache Spark
1. An in-memory analytics engine built on cluster computing technology
2. Processing in Spark happens on RDDs, which is the fundamental data structure of Spark, stored in the memory of cluster
* Databrcicks
1. Managed and optimized platform for running Apache Spark
2. Provides whole bunch of tools out of the box
3. Provides an integrated workspace to write the code and do real time collaboration
4. Allows you to setup the infrastructure with few clicks and leave the rest for Databricks to manage
* Data Pipeline
A data pipeline usually includes the steps that move data from a source system, transform the data as required, and store the data in the target system. 

## Steps
1. Build a Azure Databricks Service and create a cluster
  * Use Azure portal to build a Azure Databricks Service
  ![databrick](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/databrick.png)
  
  * Then, click `Launch Workspace`, you would get the workspace. 
  
  * After entering the workspace, you need to create a cluster.
    ![cluster](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/cluster.png)
  * Then, you could open a notebook to edit your work.
    ![notebook](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/notebook.png)
    
2. Explore the souce data
In this task, I use `Million Song dataset`, you could first open a new notebook to understand the source data. Here's some exploration of the source data.
![explore](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/explore.png)
![explore2](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/explore2.png)

3. Ingest raw data to Delta Lake
  * Delta Lake is the optimized storage layer that provides the foundation for storing data and tables in the Databricks Lakehouse Platform.
  * Since the source data doesn't contain the header information, we need to define the schema. When we run the code, it will ingest the data from the file_path (`/databricks-datasets/songs/data-001/`), and write the data to the Delta table specified by table_name (`pipeline_raw_song_data`)

4. Prepare raw data and write to Delta Lake
  * In this step, we process the raw data and convert it into prepared data that can be used later.
  * We could open a new SQL notebook to process the data.

5. Query the transformed data
  * In this step, we use queries to analyze the songs data to extend the processing pipeline.
  * We could open a new SQL notebook to query the data and view the results.

6. Create an Azure Databricks job to run the pipeline
  * Click `Create job` in `Workflows`
  * Clike `Add a new task to your job` to build a new task. Enter a `name` as Task name, choose `Notebook` as type, choose `Workspace` as Source and select `the desired notebook` as the path. 
  * You can continue to `Add task` to complete your workflow.
  * Here's my workflow:
    ![workflow](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/workflow.png)
  * Click `Run Now` to run the workflow. You can check the running details by clicking the `Start time`.
    ![run](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/run.png)
    ![details](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/details.png)
    You can check the results by clicking one of your `task`
    ![result](https://github.com/JuliaJHL/imgs_readme/blob/main/ids721proj3/result.png)
    
  

## Reference
* [Million Song dataset](http://millionsongdataset.com/)





