-- MySQL, Oracle PL/SQL, MSSQL
SELECT player_id, device_id FROM
    (SELECT player_id, device_id, event_date, ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS row_num
     FROM Activity) lookup
WHERE row_num = 1

-- MySQL
SELECT a1.player_id, a2.device_id
FROM Activity a1, Activity a2
WHERE a1.player_id = a2.player_id
  AND a1.event_date = a2.event_date
  AND a1.device_id = a2.device_id
GROUP BY a1.player_id

SELECT A.player_id, B.device_id
FROM
    (SELECT player_id, MIN(event_date) AS event_date, device_id
     FROM Activity
     GROUP BY player_id) A
        JOIN Activity B
             ON A.player_id = B.player_id
                 AND A.event_date = B.event_date