-- MySQL
SELECT A.name AS Employee
FROM Employee AS A
         JOIN Employee AS B
              ON A.managerId = B.id
WHERE A.salary > B.salary

SELECT A.name AS Employee
FROM Employee AS A, Employee AS B
WHERE A.managerId = B.id
  AND A.salary > B.salary

-- Oracle PL/SQL
SELECT A.name AS Employee
FROM Employee A
         JOIN Employee B
              ON A.managerId = B.id
WHERE A.salary > B.salary

SELECT A.name AS Employee
FROM Employee A, Employee B
WHERE A.managerId = B.id
  AND A.salary > B.salary