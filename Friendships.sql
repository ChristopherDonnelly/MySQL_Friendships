select users.first_name, users.last_name, users2.first_name as friends_first_name, users2.last_name as friends_last_name from users
left join friendships on users.id = friendships.user_id
left join users as users2 on users2.id = friendships.friend_id
order by users2.last_name;
