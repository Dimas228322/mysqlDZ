SELECT users.id,
	COUNT(DISTINCT messages.id) +
    COUNT(DISTINCT like_id.id) +
    COUNT(DISTINCT media.id) AS lowActiv
FROM users
LEFT JOIN messages ON users.id = messages.from_user_id
LEFT JOIN like_id ON users.id = like_id.id
LEFT JOIN media ON users.id = media.user_id
GROUP BY users.id
ORDER BY lowActiv
LIMIT 10;