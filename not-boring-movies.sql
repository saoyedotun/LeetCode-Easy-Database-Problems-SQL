-- MySQL
SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1 AND description <> 'boring'
ORDER BY rating DESC

-- MSSQL
SELECT *
FROM Cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC

-- Oracle PL/SQL
SELECT *
FROM Cinema
WHERE REMAINDER(id, 2) = 1 AND  NOT description = 'boring'
ORDER BY rating DESC