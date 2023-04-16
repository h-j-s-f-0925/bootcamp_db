-- 以下にクエリを書いてください
select tags.name as tag_name, count(posts.id) as posts_count 
from posts
join post_tags
on posts.id = post_tags.post_id
join tags
on post_tags.tag_id = tags.id
group by tag_id
order by posts_count desc, tags.id
;