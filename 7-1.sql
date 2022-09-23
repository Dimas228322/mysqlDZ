

SELECT id, name FROM users;

SELECT us.id, u.name
	FROM users AS us
	JOIN orders AS os ON us.id = os.user_id;