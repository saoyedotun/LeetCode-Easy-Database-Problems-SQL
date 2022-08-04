-- MySQL, MSSQL
SELECT name AS Customers
FROM Customers
         LEFT JOIN Orders
                   ON Customers.id = Orders.customerId
WHERE customerId IS NULL

SELECT name AS Customers
FROM Orders
         RIGHT JOIN Customers
                    ON Orders.customerId  = Customers.id
WHERE customerId IS NULL

-- Oracle PL/SQL
SELECT name AS Customers
FROM Customers
         LEFT JOIN Orders
                   ON Customers.id = Orders.customerId
WHERE customerId IS NULL
ORDER BY name

SELECT name AS Customers
FROM Orders
         RIGHT JOIN Customers
                    ON Orders.customerId  = Customers.id
WHERE customerId IS NULL
ORDER BY name