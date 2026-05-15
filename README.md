💻 Computer Sales Data Engineering Project
📌 Project Overview

This project showcases an end-to-end Data Engineering pipeline built on a computer sales dataset. It demonstrates how raw transactional data is transformed into a structured data warehouse that supports analysis and reporting.

The focus is on applying ETL processes, SQL development, and dimensional modeling to ensure data is accurate, consistent, and ready for business insights.

🎯 Project Goals
Load raw computer sales data into a staging environment
Clean, standardize, and transform the dataset for accuracy
Design a Star Schema data warehouse model
Build automated ETL processes using SQL stored procedures
Maintain data integrity and improve query performance 

TOOLS USED:
.SQL Server Management Studio (SSMS)
.SQL (DDL, DML, Joins, Aggregations, Filtering)
.Stored Procedures for ETL Automation
.Data Warehousing Concepts
.Cloud Platforms (Snowflake, Databricks, Azure – conceptual exposure)
.🏗️ Data Pipeline Architecture
.📂 End-to-End Flow
.Raw Dataset (pc_data)
        ↓
Staging Layer
        ↓
Data Cleaning & Transformation
        ↓
Dimension Tables (Customer, PC, Shop, etc.)
        ↓
Fact Table (PC Sales Fact)
        ↓
Reporting & Analysis Layer
📐 Data Modeling Approach
⭐ Star Schema Design

The project uses a Star Schema structure, which is widely used in data warehousing for fast querying and simple relationships.

📊 Fact Table

The fact table contains measurable business values such as:

Cost Price,
Sale Price,
Discount Amount,
Finance Amount,
Repair Costs,
Total Sales Metrics,
📁 Dimension Tables

Dimension tables provide descriptive context for analysis:

Customer Dimension
PC Dimension,
Shop Dimension,
Location Dimension,
Payment Dimension,
Channel Dimension,
Date Dimension,
Sales Person Dimension

Priority Dimension
🧹 ETL Process Description
1. Data Extraction

Data is sourced from the raw table pc_data (1).

2. Data Transformation

During transformation:

Duplicate records are removed
Data types are standardized
Business attributes are mapped to dimension tables
Relationships are prepared for joining
3. Data Loading
Cleaned data is inserted into dimension tables
Fact table is populated using JOINs with dimension keys
Stored procedures automate the entire process
📊 Business Insights Supported

The final model enables analysis of:

Highest revenue-generating PC brands
Discount trends across products
Sales distribution by region
Popular payment methods
Sales performance over time 

🌟 Skills Demonstrated
.SQL Query Writing & Optimization
.ETL Pipeline Development
.Data Cleaning & Standardization
.Star Schema Design
.Fact and Dimension Modeling
.Stored Procedure Automation 

# 📊 Business Value
This project helps businesses:
- Analyze sales performance
- Track revenue trends
- Improve reporting efficiency
- Support data-driven decision-making

📈 Project Outcome

This project successfully delivers a structured data warehouse built from raw sales data. It provides:

A scalable ETL pipeline
Clean and consistent datasets
A star schema optimized for analytics
A foundation for dashboards and reporting tools

# 📸 Project Screenshots
Screenshots are available in the project_screenshots folder.
