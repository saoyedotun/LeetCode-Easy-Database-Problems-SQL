-- MySQL, Oracle PL/SQL, MSSQL
SELECT buyer_id
FROM Product
JOIN Sales
    ON Product.product_id = Sales.product_id
GROUP BY buyer_id
-- HAVING SUM(CASE WHEN product_name = "S8" THEN 1 ELSE 0 END) > 0
HAVING SUM(product_name = "S8") > 0
    AND SUM(product_name = "iphone") = 0