SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS Month,
    `Total Revenue`
FROM `online sales data`
WHERE MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) BETWEEN 1 AND 6
ORDER BY Year, Month;