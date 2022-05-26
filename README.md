# DataEngineering-project
Data pipeline, ETL, Kaggle, csv, parquet, AWS CLI, AWS cloud, S3, Glue, Athena, QuickSight


## Overview
This was an end-to-end data engineering project from source to destination, using primarily AWS.  At local, data was extracted and transformed from csv file to parquet, using PyArrow. With AWS CLI access in terminal, the file was then uploaded to an S3 bucket. An IAM role was created for Glue Crawler to access the S3 bucket to ascertain the schema and to create a data catalog, namely a table. The data was then viewed in Athena where many ad hoc queries were made.  Finally, QuickSight was used for data visualization and creating a dashboard.


## Architecture of Data Pipeline

![Alt text](/image/data_pipeline_image.jpeg "Data pipeline visualization")

## Data Source
The data comes from Kaggle's dataset which has wine reviews. The record count is 150,930. 
The original file size is 49.78 MB.  I used PyArrow to convert the csv file to parquet. In parquet format, the file size is 23.1 MB.
There are 11 columns in the dataset: id, country, description, designation, points, price, province, region_1, region_2, variety, and winery.

Kaggle data can be found here: https://www.kaggle.com/datasets/zynicide/wine-reviews?select=winemag-data-130k-v2.json

Data Engineering class can be found here:  https://github.com/DataTalksClub/data-engineering-zoomcamp


## Data Visualization and Insights

<img src="image/quicksight_country_bar.jpeg" width="100" >

![Alt text](image/quicksight_country_bar.jpeg "Count of Records by Country") ![Alt text](image/quicksight_country_pie.jpeg "Country")

![Alt text](/image/quicksight_variety.jpeg "Variety") ![Alt text](/image/quicksight_province.jpeg "Province")

![Alt text](/image/quicksight_region1.jpeg "Region 1") ![Alt text](/image/quicksight_region2.jpeg "Region 2")


