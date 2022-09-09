-- MySQL
UPDATE Salary
SET sex = IF(sex = 'm', 'f', 'm')

-- MySQL, Oracle PL/SQL, MSSQL
UPDATE Salary
SET sex =
CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END

UPDATE Salary
SET sex =
CASE sex
    WHEN 'm' THEN 'f'
    ELSE 'm'
END