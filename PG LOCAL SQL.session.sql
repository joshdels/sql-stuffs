CREATE TABLE IF NOT EXISTS users (
  id SERIAL  PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

INSERT INTO users(username, email) VALUES
  ('joshuadels', 'Manoknirecmar.com'),
  ('Joshwapo', 'dels@gmail.om')


SELECT * FROM users

DELETE FROM users
WHERE username  LIKE '%dels%'
