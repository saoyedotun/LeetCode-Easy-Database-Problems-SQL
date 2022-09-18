-- MySQL, Oracle PL/SQL, MSSQL
SELECT name AS warehouse_name
    SUM(width * length * height * units) AS volume
FROM Warehouse
JOIN Products
    ON Warehouse.product_id = Products.product_id
GROUP BY name