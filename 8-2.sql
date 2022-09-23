SELECT
	COUNT(*) AS total_likes,
    prof.user_id,
    prof.birthday
FROM like_id AS Li
JOIN profiles AS prof ON Li.likes_profiles = prof.user_id
WHERE Li.likes_users
GROUP BY prof.user_id
ORDER BY prof.birthday DESC
LIMIT 10;