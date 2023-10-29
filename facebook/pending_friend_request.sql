SELECT u.*
FROM users u
JOIN friendships f ON u.user_id = f.user1_id
WHERE f.user2_id = :user_id AND f.status = 'pending';
