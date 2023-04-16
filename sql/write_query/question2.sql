-- 以下にクエリを書いてください
select concat(first_name," " , last_name) as fullname , comments.content, comments.commented_at
from comments
join users
on users.id = comments.user_id
join posts
on posts.id = comments.post_id
where posts.id = 12345
order by commented_at desc;