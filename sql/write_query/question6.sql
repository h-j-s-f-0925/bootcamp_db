-- 以下にクエリを書いてください
SELECT f.following_id AS user_id, CONCAT(u.first_name," ", u.last_name) AS full_name
FROM follows AS f
JOIN users AS u 
ON u.id = f.following_id
WHERE f.follower_id = 6000
ORDER BY full_name ASC;


