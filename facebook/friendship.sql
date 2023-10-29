CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  -- Other user-related fields
);

CREATE TABLE friendships (
  friendship_id SERIAL PRIMARY KEY,
  user1_id INTEGER NOT NULL REFERENCES users(user_id),
  user2_id INTEGER NOT NULL REFERENCES users(user_id),
  status VARCHAR(50) DEFAULT 'pending', -- 'pending', 'accepted', 'rejected', etc.
  requested_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  accepted_at TIMESTAMP WITH TIME ZONE,
  -- Other fields related to friendships
);
