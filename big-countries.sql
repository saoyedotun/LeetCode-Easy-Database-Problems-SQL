-- MySQL, Oracle PL/SQL, MSSQL
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000

SELECT name, population, area
FROM World
WHERE area > 2999999 OR population > 24999999