INSERT INTO friendships (user1_id, user2_id, status, requested_at)
VALUES (:current_user_id, :other_user_id, 'pending', CURRENT_TIMESTAMP);
