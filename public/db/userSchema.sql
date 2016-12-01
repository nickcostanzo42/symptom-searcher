DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  password_digest VARCHAR(255)
);

CREATE TABLE savedDoctors (
  id      SERIAL        PRIMARY KEY,
  name    VARCHAR(100)  NOT NULL,
  phone   VARCHAR(20)   NOT NULL,
  userId  INTEGER       REFERENCES users
);
