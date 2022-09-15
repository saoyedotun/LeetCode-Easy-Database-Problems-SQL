-- MySQL
-- using MAX
SELECT
    product_id,
    MAX(IF(store = 'store1', price, NULL)) AS store1,
    MAX(IF(month = 'store2', price, NULL)) AS store2,
    MAX(IF(month = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id

-- using MIN
SELECT product_id,
    MIN(IF(store = 'store1', price, NULL)) AS store1,
    MIN(IF(month = 'store2', price, NULL)) AS store2,
    MIN(IF(month = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id

-- using AVG
SELECT product_id,
    AVG(IF(store = 'store1', price, NULL)) AS store1,
    AVG(IF(month = 'store2', price, NULL)) AS store2,
    AVG(IF(month = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id