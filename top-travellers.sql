-- MySQL
SELECT name, COALESCE(SUM(distance), 0) AS travelled_distance
FROM Users
LEFT JOIN Rides ON Users.id = Rides.user_id
GROUP BY user_id
-- ORDER BY travelled_distance DESC, name
ORDER BY 2 DESC, 1 ASC