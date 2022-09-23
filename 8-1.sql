SELECT profiles.gender,
COUNT(like_id.id) AS total
FROM like_id
JOIN profiles ON like_id.id = profiles.user_id
group by profiles.gender
ORDER BY total DESC
LIMIT 1;