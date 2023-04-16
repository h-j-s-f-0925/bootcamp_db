-- 以下にクエリを書いてください
select posts.id as post_id, count(likes.id) as likes_count
from posts
join users
on users.id = posts.user_id
left join likes
on posts.id = likes.post_id
where users.id = 5000
group by posts.id
order by posted_at desc
;

-- SELECT posts.id AS post_id, COUNT(likes.id) AS likes_count
-- FROM  posts
-- LEFT JOIN likes ON posts.id = likes.post_id
-- WHERE posts.user_id = 5000
-- GROUP BY posts.id 
-- order by likes_count desc;