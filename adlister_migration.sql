USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(240) NOT NULL,
  email VARCHAR(240) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(240) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);

INSERT INTO users (id, username, email, password)
VALUES (1,'aduser', 'aduser1234@email.com', 'swordfish');

INSERT INTO ads (user_id,title,description)
VALUES (1,'Ad #1', 'This is an Ad'),
  (1, 'Ad #2', 'This is also an Ad'),
  (1, 'Ad #3', 'This too, is an Ad'),
  (1, 'Ad #4', 'Once more, an Ad'),
  (1, 'Ad #5', 'Yet still another Ad');