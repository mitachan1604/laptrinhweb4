--Tran Thi Minh Tang
--De3


--cau a.3
SELECT user_id, user_name, user_email
FROM users
WHERE (user_name LIKE '%a%' OR user_name LIKE 'm%') AND user_email LIKE '%@yahoo.com%'
ORDER BY user_name DESC;

