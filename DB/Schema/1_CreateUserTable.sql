BEGIN;

/* User Table Structure */
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
	id                       SERIAL NOT NULL PRIMARY KEY,
	name                     text,
	avatar_url               text,
	email                    text,
  encrypted_password       text,
  encryption_salt          text,
	created_at               timestamp,
	updated_at               timestamp
);

/* Bootstrap Table Data */
INSERT INTO users (name, email, encrypted_password, created_at, updated_at)
VALUES ('Mike Burns', 'meburns90@gmail.com', 'not-encrypted', now(), now()),
       ('Kee Lin Chia', 'keelinchia@gmail.com', 'not-encrypted', now(), now());

COMMIT;
