-- MySQL
-- using MAX
SELECT
    product_id,
    MAX(IF(store = 'store1', price, NULL)) AS store1,
    MAX(IF(store = 'store2', price, NULL)) AS store2,
    MAX(IF(store = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id

-- using MIN
SELECT product_id,
    MIN(IF(store = 'store1', price, NULL)) AS store1,
    MIN(IF(store = 'store2', price, NULL)) AS store2,
    MIN(IF(store = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id

-- using AVG
SELECT product_id,
    AVG(IF(store = 'store1', price, NULL)) AS store1,
    AVG(IF(store = 'store2', price, NULL)) AS store2,
    AVG(IF(store = 'store3', price, NULL)) AS store3
FROM Products
GROUP BY product_id