-- MySQL, Oracle PL/SQL, MSSQL
SELECT name AS Customers
FROM Orders
         RIGHT JOIN Customers
                    ON Orders.customerId  = Customers.id
WHERE Orders.customerId IS NULL