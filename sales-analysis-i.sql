-- MySQL, Oracle PL/SQL, MSSQL
SELECT seller_id FROM Sales GROUP BY seller_id
HAVING SUM(price) =
(SELECT SUM(price) AS total_sales_price
FROM Sales
GROUP BY seller_id
ORDER BY total_sales_price DESC)