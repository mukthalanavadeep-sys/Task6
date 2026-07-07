SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month,
    COUNT(*) AS Records
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'));