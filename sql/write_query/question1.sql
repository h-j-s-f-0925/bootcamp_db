-- 以下にクエリを書いてください
select email 
from settings
join users
on settings.user_id = users.id 
where settings.is_send_email = 1;
