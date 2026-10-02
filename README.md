# Northwind Multi-Table Sales Analysis

## 📊 Project Overview

This project was completed as part of a Data Analytics internship task focused on performing multi-table sales analysis using SQL and Power BI.

The analysis uses the Northwind dataset to combine information from orders, customers, and products and transform it into meaningful business insights.

The project demonstrates an end-to-end analytics workflow:

SQL Data Analysis → Data Validation → Power BI Dashboard → Business Insights

---

## 🎯 Objective

The main objective of this project was to apply relational data analysis techniques to:

- Combine data from multiple tables
- Analyze sales performance
- Analyze customers and products
- Identify top-performing products
- Identify top customers by sales
- Analyze sales trends over time
- Build an interactive Power BI dashboard
- Avoid double counting when working with relational data

---

## 🛠️ Tools & Technologies

- SQL
- Microsoft Power BI
- Northwind Dataset
- Relational Database Concepts
- Data Visualization
- Data Analysis

---

## 🗂️ Dataset

The project uses the Northwind sales dataset containing information related to:

- Customers
- Orders
- Products
- Order details
- Sales
- Quantity
- Unit price
- Discounts
- Order dates

The data was analyzed by connecting related tables using appropriate keys.

---

## 🔍 SQL Analysis

SQL was used to perform the data preparation and analysis.

Key activities included:

- Joining multiple tables
- Calculating total sales
- Calculating total quantity sold
- Counting distinct orders
- Analyzing customers
- Analyzing products
- Grouping sales by date
- Identifying top products
- Identifying top customers
- Validating joins
- Avoiding duplicate counting

A major consideration was distinguishing between line-level records and unique orders to prevent double counting.

---

## 📈 Power BI Dashboard

The Power BI dashboard was designed to provide an interactive view of Northwind sales performance.

### Dashboard Components

- Total Sales KPI
- Total Orders KPI
- Total Quantity Sold KPI
- Top 5 Products by Sales
- Monthly Sales Trend
- Top 5 Customers by Sales
- Customer Sales Table
- Order Date Filter
- Order Day Filter
- Order Month Filter
- Customer Name Filter
- Product Name Filter

---

## 💡 Key Insights

The analysis provides insights into:

1. Overall sales performance
2. Total order activity
3. Total quantity sold
4. Products contributing the most to sales
5. Customers contributing the most to sales
6. Monthly sales patterns
7. The importance of using distinct order counts when analyzing line-level sales data

---

## ⚠️ Data Validation

One important validation step was checking for double counting.

The dataset contains multiple records associated with the same order because an order can contain multiple products.

Therefore, counting rows directly as orders can overstate the number of orders.

For order-level KPIs, distinct `order_id` values should be used rather than simply counting transaction rows.

---

## 📊 Dashboard Preview

The Power BI dashboard includes KPI cards, charts, tables, and interactive filters to make the analysis easier to explore.

<img width="1135" height="633" alt="dashboard" src="https://github.com/user-attachments/assets/ae5fc745-bbdd-43d0-a084-b85a7f34b7e9" />

## SQL Query Preview
<img width="1133" height="629" alt="Screenshot 2026-10-02 174053" src="https://github.com/user-attachments/assets/9192fcde-62fb-412d-b8be-37f11e11b0d5" />

<img width="1600" height="900" alt="Screenshot (486)" src="https://github.com/user-attachments/assets/435f49f8-0a40-49c4-ab9d-ca7698482d3d" />

<img width="1133" height="629" alt="Screenshot 2026-10-02 174053" src="https://github.com/user-attachments/assets/96dba179-f394-4714-aa65-d6a51d103133" />







