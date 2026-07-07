# Task 6: Sales Trend Analysis Using SQL

## Project Overview

This project focuses on analyzing online sales data using SQL.

The objective of this task is to perform sales trend analysis by calculating monthly revenue and order volume. SQL queries are used to extract months from dates, group sales data by year and month, calculate total revenue using aggregation functions, count unique orders, sort results, and filter data for specific time periods.

The analysis helps in understanding sales patterns and identifying trends from transaction data.



## Dataset

**Dataset Name:** Online Sales Data

The dataset contains transaction details including:

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

---

## Tools Used

- MySQL Workbench
- SQL

---

## SQL Concepts Used

The following SQL concepts were applied:

- SELECT statements
- Date conversion using STR_TO_DATE()
- EXTRACT()
- YEAR() and MONTH()
- GROUP BY
- SUM()
- COUNT(DISTINCT)
- ORDER BY
- WHERE clause


## Analysis Performed

### 1. Monthly Analysis

Extracted month values from transaction dates to understand monthly sales patterns.

### 2. Year and Month Grouping

Grouped sales records based on year and month to analyze sales trends over time.

### 3. Revenue Calculation

Used the SUM() function to calculate total and monthly revenue.

### 4. Order Volume Calculation

Used COUNT(DISTINCT Transaction ID) to calculate the number of unique orders.

### 5. Sorting Results

Used ORDER BY to arrange sales results based on revenue values.

### 6. Time Period Filtering

Used WHERE conditions to analyze sales data for specific time periods.



## Key Insights

- Monthly revenue trends were identified from sales transactions.
- Order volume was calculated to understand sales activity.
- Sales performance was analyzed across different months.
- SQL aggregation and filtering helped extract meaningful business insights.


## Conclusion

This project demonstrates the use of SQL for sales trend analysis. By applying date functions, aggregation functions, grouping, sorting, and filtering techniques, valuable insights were extracted from online sales transaction data.
