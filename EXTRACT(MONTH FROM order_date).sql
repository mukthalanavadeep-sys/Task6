SELECT
    EXTRACT(MONTH FROM STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month
FROM `online sales data`;