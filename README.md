# AdventureWorks--ADE-Project

⚙️ Azure Data Engineering Project: AdventureWorks Pipeline

A complete end-to-end data engineering pipeline on Azure built using the Adventure Works dataset. This project simulates a mini production-grade data platform using Azure tools like Data Factory, Databricks, Data Lake Storage, Synapse Analytics, and Power BI.

🎯 Goal: To understand and implement the data engineering lifecycle on Azure — from ingestion to transformation to visualization.

📊 Dataset: Adventure Works

The project uses various datasets from Adventure Works, including:

Product, Product Category, Product Subcategory
Territories, Sales (2015–2017)
Return Data
Calendar

🛠️ Tech Stack

Layer	Tools/Tech
Ingestion	Azure Data Factory
Storage	Azure Data Lake Storage (Bronze, Silver, Gold)
Processing	Azure Databricks (PySpark)
Query/Serve	Azure Synapse Analytics
Visualization	Power BI

📌 Architecture Overview and Pipeline Flow

📁 ADLS (Bronze)         <-  Raw data ingested via ADF
📁 ADLS (Silver)         <-  Cleaned/transformed data via Databricks
📁 ADLS (Gold)           <-  Queried tables served from Synapse
📊 Power BI Report       <-  Connected to Synapse SQL endpoint




1. Data Ingestion – ADF

Built a dynamic pipeline using Lookup and ForEach activities with parameterization to load all datasets sequentially.

Loaded raw CSV data into ADLS Bronze container

2. Data Processing – Databricks (PySpark)

Registered an Azure Service Principal for secure access

Mounted ADLS to Databricks using the SP credentials

Cleaned & transformed data using PySpark

Stored processed data as Parquet files in ADLS Silver



3. Data Serving – Synapse Analytics

Created a serverless SQL pool in Synapse
Created Views over Parquet files stored in Silver
Then defined External Tables using:
External File Format
External Data Source
Credential setup
Stored these external tables in ADLS Gold

4. Visualization – Power BI

Connected Power BI to Synapse SQL endpoint

Built a basic dashboard to test the pipeline

