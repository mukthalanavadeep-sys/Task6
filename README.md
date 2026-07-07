# Task 6: Sales Trend Analysis Using SQL

## Project Overview

This project focuses on analyzing sales trends using SQL queries.

The main objective of this task is to analyze monthly revenue and order volume from an online sales dataset by applying SQL concepts such as date extraction, aggregation, grouping, filtering, and sorting.

---

## Dataset Information

**Dataset Name:** Online Sales Data

The dataset contains online transaction details including:

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

## Objective

The objective of this project is to:

- Analyze sales performance over time.
- Calculate monthly revenue.
- Calculate order volume.
- Identify sales trends.
- Filter sales data for specific time periods.
- Sort results for better analysis.

---

# SQL Analysis Performed

## 1. Extract Month from Date

### Concept Used:
`EXTRACT(MONTH FROM order_date)`

### Purpose:
To extract the month value from transaction dates and analyze monthly sales patterns.

### Query:

```sql
SELECT
    EXTRACT(MONTH FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month
FROM `online sales data`;
```

---

# 2. Group Data by Year and Month

### Concept Used:
`GROUP BY`

### Purpose:
To group sales transactions based on year and month for trend analysis.

### Query:

```sql
SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month,
    COUNT(*) AS Records
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'));
```

---

# 3. Calculate Total Revenue

### Concept Used:
`SUM()`

### Purpose:
To calculate the total revenue generated from sales transactions.

### Query:

```sql
SELECT
    SUM(`Total Revenue`) AS Total_Revenue
FROM `online sales data`;
```

---

# 4. Calculate Order Volume

### Concept Used:
`COUNT(DISTINCT)`

### Purpose:
To calculate the number of unique orders.

### Query:

```sql
SELECT
    COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM `online sales data`;
```

---

# 5. Sort Data Using ORDER BY

### Concept Used:
`ORDER BY`

### Purpose:
To sort sales records based on revenue values.

### Query:

```sql
SELECT
    `Transaction ID`,
    `Total Revenue`
FROM `online sales data`
ORDER BY `Total Revenue` DESC;
```

---

# 6. Filter Results for Specific Time Periods

### Concept Used:
`WHERE`

### Purpose:
To analyze sales data for a specific time period.

Example:
Showing sales from January to June.

### Query:

```sql
SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month,
    SUM(`Total Revenue`) AS Monthly_Revenue
FROM `online sales data`
WHERE MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) BETWEEN 1 AND 6
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY Year, Month;
```

---

# Final Sales Trend Analysis Query

This query combines all major concepts:

- Year and month grouping
- Monthly revenue calculation
- Order volume calculation
- Sorting results

```sql
SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month,
    SUM(`Total Revenue`) AS Monthly_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY Year, Month;
```

---

# Key Insights

- Monthly sales trends were analyzed using SQL.
- Revenue patterns were identified using aggregation functions.
- Order volume was calculated using unique transaction IDs.
- Time-based filtering helped analyze selected periods.
- Sorting helped arrange results for better understanding.

---

# Project Structure

```
Task-6-Sales-Trend-Analysis
│
├── README.md
│
├── task6_sales_trend_analysis.sql
│
├── Online Sales Data.csv
│
└── Screenshots
    │
    ├── extract_month.png
    ├── group_by_year_month.png
    ├── sum_revenue.png
    ├── count_order_volume.png
    ├── order_by_sorting.png
    └── time_period_filter.png
```

---

# Conclusion

This project demonstrates how SQL can be used for sales trend analysis.

By applying date functions, aggregation functions, GROUP BY, ORDER BY, and filtering techniques, meaningful insights were extracted from online sales transaction data.
