-- MySQL, Oracle PL/SQL, MSSQL
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5

SELECT class FROM
(SELECT class, COUNT(DISTINCT student) AS c
FROM Courses
GROUP BY class) lookup
WHERE c >= 5