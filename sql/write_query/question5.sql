-- 以下にクエリを書いてください
-- select tags.name as tag_name, count(posts.id) as posts_count 
-- from posts
-- join post_tags
-- on posts.id = post_tags.post_id
-- join tags
-- on post_tags.tag_id = tags.id
-- group by tag_id
-- having posts_count >= 20
-- order by posts_count desc, tags.id
-- ;

SELECT tags.name AS tag_name, COUNT(*) AS posts_count
FROM tags
JOIN post_tags ON tags.id = post_tags.tag_id
GROUP BY tags.id
HAVING posts_count >= 20
ORDER BY posts_count DESC;