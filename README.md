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


<img width="847" height="588" alt="DDL1" src="https://github.com/user-attachments/assets/16ffa232-c346-4870-9909-3df896e7bafb" />
<img width="836" height="569" alt="DD2" src="https://github.com/user-attachments/assets/c7731e1e-6f45-409a-a5e5-d838d0fc4f3c" />


✔ Data Quality Checks

Duplicate detection

NULL value checks

Data range validation

Text cleaning (TRIM checks)

<img width="508" height="435" alt="Data Quality Checks" src="https://github.com/user-attachments/assets/c58b6f8c-d2e6-4c59-ac71-5fc82f30d1b1" />

✔ Exploratory Data Analysis (EDA)

Total sales & quantity

Average order value

Number of orders, products, customers, and stores

<img width="745" height="290" alt="Exploratory Data Analysis" src="https://github.com/user-attachments/assets/43f61e6b-f7e5-4663-88b4-4a35ef86f8c1" />


Sales trends over time (monthly & yearly)

<img width="457" height="238" alt="change over time" src="https://github.com/user-attachments/assets/d15ef172-31cb-44b8-bb91-8dd023c7979f" />
<img width="789" height="372" alt="runing total" src="https://github.com/user-attachments/assets/00918cf2-031d-4480-9090-d3bba4aa5585" />


Part-to-whole analysis (category & sub-category contribution)

<img width="763" height="391" alt="part to whole" src="https://github.com/user-attachments/assets/dd2dacb5-b9c5-4556-a045-c8dfc2315faa" />


✔ Business Analysis using SQL

Product performance (Top & Bottom products)

<img width="612" height="486" alt="image-1" src="https://github.com/user-attachments/assets/226a6e53-0116-4fb6-8e73-85ea28d2e4f8" />


Customer activity analysis

Time-based performance analysis (MoM / YoY logic using window functions)

<img width="1075" height="658" alt="image-2" src="https://github.com/user-attachments/assets/253873b6-d843-42bc-bcb7-7bc4eb49fd6f" />



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

<img width="1132" height="642" alt="page 1" src="https://github.com/user-attachments/assets/4520c59b-d13a-4a64-bd86-66c455b0b99c" />


🔹 Page 2 – Product Performance

Total Sales by Category

Top 10 Products by Sales

Bottom 10 Products by Sales

Store contribution analysis

Purpose: Identify top and underperforming products to support assortment decisions.

<img width="1134" height="637" alt="page 2" src="https://github.com/user-attachments/assets/cd2bb119-dc19-4871-9112-09a348651db4" />


🔹 Page 3 – Campaign & Customer Analysis

Total Sales vs Sales without Campaigns

Sales by Campaign Name

Sales by Campaign Type

Sales by Loyalty Tier

Number of Customers by Loyalty Tier



Purpose: Evaluate marketing campaign effectiveness and customer value.

<img width="1130" height="637" alt="page 3" src="https://github.com/user-attachments/assets/94590b07-f714-4fdf-878a-ae7f3fb2cbc6" />


🔹 Page 4 – Store Performance Analysis

Sales by Store

Sales by City

Sales by Store Size Band

Store benchmarking insights

Purpose: Support operational and commercial performance analysis.

<img width="1134" height="642" alt="page 4" src="https://github.com/user-attachments/assets/9903476d-2a73-48bd-803f-d3bce615344c" />


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
