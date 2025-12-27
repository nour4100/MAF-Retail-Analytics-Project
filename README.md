## 📌 Project Overview

This project demonstrates an end-to-end Retail Analytics use case aligned with the Associate Business Analyst role at MAF Retail.

The focus is on:

-- Data modeling using a Star Schema

-- Data cleaning & exploratory analysis using SQL

Building business-focused dashboards in Power BI to support decision-making across Operations, Marketing, and Commercial teams.

## 🗂️ Data Model

The project is built using a Star Schema:

Fact Table

fact_sales

sales_amount

quantity

discount_amount

cost_amount

unit_price

campaign_id

customer_id

product_id

store_id

date_id

Dimension Tables

dim_date

dim_product

dim_store

dim_customer

dim_campaign

Relationships were created in Power BI following one-to-many best practices.

## 🧹 SQL – Data Preparation & Analysis

SQL was used for:

DDL
![image8](/SQL%20Script/image/DDL1.png)
![image9](/SQL%20Script/image/DD2.png)

✔ Data Quality Checks

Duplicate detection

NULL value checks

Data range validation

Text cleaning (TRIM checks)

![image7](/SQL%20Script/image/Data%20Quality%20Checks.png)

✔ Exploratory Data Analysis (EDA)

Total sales & quantity

Average order value

Number of orders, products, customers, and stores

![image6](/SQL%20Script/image/Exploratory%20Data%20Analysis.png)

Sales trends over time (monthly & yearly)

![image3](/SQL%20Script/image/change%20over%20time.png)
![image5](/SQL%20Script/image/runing%20total.png)

Part-to-whole analysis (category & sub-category contribution)

![part to whole](image.png)

✔ Business Analysis using SQL

Product performance (Top & Bottom products)

![alt text1](image-1.png)

Customer activity analysis

Time-based performance analysis (MoM / YoY logic using window functions)

![alt text2](image-2.png)

## 📊 Power BI – Dashboard & Visualization

Power BI was used to build 4 interactive report pages:

🔹 Page 1 – Executive Overview

Total Sales

Gross Profit

Average Order Value

Total Orders

Sales by Category & Sub-category

Monthly Sales Trend

City & Year slicers


Purpose: High-level business performance overview for management.
![image1](/SQL%20Script/image/page%201.png)


🔹 Page 2 – Product Performance

Total Sales by Category

Top 10 Products by Sales

Bottom 10 Products by Sales

Store contribution analysis

Purpose: Identify top and underperforming products to support assortment decisions.
![image2](/SQL%20Script/image/page%202.png)


🔹 Page 3 – Campaign & Customer Analysis

Total Sales vs Sales without Campaigns

Sales by Campaign Name

Sales by Campaign Type

Sales by Loyalty Tier

Number of Customers by Loyalty Tier



Purpose: Evaluate marketing campaign effectiveness and customer value.
![image3](/SQL%20Script/image/page%203.png)


🔹 Page 4 – Store Performance Analysis

Sales by Store

Sales by City

Sales by Store Size Band

Store benchmarking insights

Purpose: Support operational and commercial performance analysis.
![image4](/SQL%20Script/image/page%204.png)



## 🧠 Key Business Insights

Total sales reached ~44M, indicating stable retail performance across the analyzed period

Sales are fairly distributed across categories, with no single category dominating total revenue

The majority of total sales are generated during active campaigns, compared to non-campaign periods

Seasonal campaigns outperform other campaign types

Loyalty tiers differ in value, not just customer count

## 🛠️ Tools Used

SQL Server – Data cleaning, validation, and analysis

Power BI – Data modeling, DAX measures, dashboards

Star Schema Modeling – Fact & Dimension tables

## 🎯 Project Objective

This project was built to showcase practical business analytics skills aligned with a Retail Business Analyst role, focusing on:

Clear KPIs

Actionable insights

Simple, explainable analytics
