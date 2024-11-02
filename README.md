# Retail Inventory Management and Forecasting

This project delivers a comprehensive analysis of business data to support data-driven decision-making. By integrating database management, ETL, machine learning, and data visualization, it aims to provide clear, actionable insights into business performance and trends.

## Project Overview

The project is structured into four main components:
- *Database Management*: Efficient data storage with SQL.
- *ETL Workflows*: Data extraction, transformation, and loading with SSIS.
- *Machine Learning*: Predictive analytics using Python in Azure.
- *Data Visualization*: Insights presented through a Power BI dashboard.

---

## Project Value

This project combines advanced data techniques to provide:

1. *Efficient Data Storage and Retrieval*  
   SQL tables are structured to allow quick, efficient data access, ensuring that customer, product, and order data is organized and easily manageable.

2. *Streamlined Data Processing*  
   Using SSIS, data is automatically extracted, cleaned, transformed, and loaded, enabling faster analysis and improved data quality.

3. *Predictive Analytics*  
   Machine learning models offer predictive insights, helping the business understand and anticipate trends.

4. *Interactive Data Visualization*  
   A Power BI dashboard makes data accessible, enabling stakeholders to explore and interpret business metrics interactively.

---

## Steps Taken

### 1. SQL Table Creation
   - *Description*: SQL was used to create structured tables to store Customer, Order, Product, and OrderDetails data. This step ensures data is stored logically, making it easy to manage and query.
   - *Details*:
     - Each table includes a unique primary key and relevant relationships with other tables.
     - Data types were carefully selected to optimize storage and retrieval speed.
   


### 2. ETL Process using SSIS
   - *Description*: SSIS was used to extract, transform, and load data from multiple sources into a centralized data warehouse. This ensures that data is clean, consistent, and ready for analysis.
   - *Details*:
     - The ETL process integrates data from diverse sources, handling duplicates and missing values.
     - Transformation logic includes standardizing date formats and currency values.
     - The ETL workflow is automated to refresh data at regular intervals.
   


### 3. Machine Learning in Azure with Python
   - *Description*: Predictive analytics models were created using Python scripts within Azure. These models enable the business to gain predictive insights, such as forecasting customer behavior and sales trends.
   - *Details*:
     - Azure Notebooks were used to develop models with popular libraries like scikit-learn and pandas.
     - Model include regression  algorithms tailored to business needs.
     - The models are regularly updated as new data is loaded into the system.
   


### 4. Power BI Dashboard Visualization
   - *Description*: A Power BI dashboard was developed to display metrics and insights, enabling stakeholders to monitor KPIs and business performance interactively.
   - *Details*:
     - Interactive Visualization: Allows for dynamic filtering by product, category, sub-category, city, and year.
     - key Performance Metrics: Displays total sales, profit, and year-over-year comparisons.
     - Sales and Profit Trends: Graphical insights into sales over time, segmented by product and region.
     - Geographical Breakdown: Visual map of profit by state with a comparison between the U.S. and Canada.
     - Customer Segmentation: Insights into sales distribution across consumer, corporate, and home office segments.
   
