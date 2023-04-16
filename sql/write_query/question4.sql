-- 以下にクエリを書いてください
select tags.name as tag_name 
from posts
join post_tags
on posts.id = post_tags.post_id
join tags
on post_tags.tag_id = tags.id
where posts.id = 40000
order by tag_name
;
