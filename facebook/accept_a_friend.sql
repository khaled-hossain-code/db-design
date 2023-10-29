UPDATE friendships
SET status = 'accepted', accepted_at = CURRENT_TIMESTAMP
WHERE user1_id = :other_user_id AND user2_id = :current_user_id AND status = 'pending';
