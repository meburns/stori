BEGIN;

/* Timelines Table Structure */
DROP TABLE IF EXISTS timelines;

CREATE TABLE IF NOT EXISTS timelines (
	id                       SERIAL NOT NULL PRIMARY KEY,
  user_id                  integer REFERENCES users (id),
	data                     text,
	created_at               timestamp,
	updated_at               timestamp,
);

COMMIT;
