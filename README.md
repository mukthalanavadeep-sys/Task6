# Task 6: Sales Trend Analysis Using SQL

## Project Overview

This project focuses on analyzing sales trends using SQL.  
The objective is to analyze monthly revenue and order volume from an online sales dataset by applying SQL aggregation, grouping, filtering, and sorting techniques.

## Dataset

**Dataset Name:** Online Sales Data

The dataset contains sales transaction details such as:

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

## Tools Used

- MySQL Workbench
- SQL

## SQL Concepts Used

The following SQL concepts were applied:

- SELECT statements
- Date extraction and conversion
- EXTRACT()
- YEAR() and MONTH()
- GROUP BY
- SUM()
- COUNT(DISTINCT)
- ORDER BY
- WHERE clause

## Analysis Performed

### 1. Extract Month from Date

Used `EXTRACT(MONTH FROM date)` logic to identify the month from transaction dates.

Purpose:
- Analyze sales based on monthly patterns.

---

### 2. Group Data by Year and Month

Grouped transactions based on year and month.

Purpose:
- Understand monthly sales trends.

---

### 3. Calculate Total Revenue

Used:

```sql
SUM(Total Revenue)
