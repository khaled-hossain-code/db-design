SELECT u.*
FROM users u
JOIN friendships f ON u.user_id = f.user2_id
WHERE f.user1_id = :user_id AND f.status = 'accepted'
UNION
SELECT u.*
FROM users u
JOIN friendships f ON u.user_id = f.user1_id
WHERE f.user2_id = :user_id AND f.status = 'accepted';
