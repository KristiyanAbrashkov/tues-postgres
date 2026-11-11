-- 1. Show the last 20 messages in a channel (newest first).
SELECT
    m.created_at,
    u.username,
    m.content
FROM messages m
JOIN users u ON u.id = m.user_id
WHERE m.channel_id = (
    SELECT id FROM channels WHERE name = 'general'
)
ORDER BY m.created_at DESC, m.id DESC
LIMIT 20;


-- 2. Count messages per user, including users with zero messages.
SELECT
    u.username,
    COUNT(m.id) AS message_count
FROM users u
LEFT JOIN messages m ON m.user_id = u.id
GROUP BY u.id, u.username
ORDER BY u.id;
