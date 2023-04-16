-- 以下にクエリを書いてください
select users.id as user_id, content as latest_post_content
from follows  
join users 
on following_id = users.id
join posts
on posts.user_id = users.id
where follower_id = 7000
and posts.posted_at = (
    select max(posts.posted_at)
    from posts
    where posts.user_id = users.id
)
order by users.id asc;