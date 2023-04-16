-- 以下にクエリを書いてください
-- SELECT f.following_id AS user_id, CONCAT(u.first_name," ", u.last_name) AS full_name
-- FROM follows AS f
-- JOIN users AS u 
-- ON u.id = f.following_id
-- WHERE f.follower_id = 6000
-- ORDER BY full_name ASC;

select users.id as user_id, CONCAT(users.first_name, users.last_name) AS full_name 
from follows 
join users 
on follower_id = users.id 
where following_id = 6000 
order by full_name asc;