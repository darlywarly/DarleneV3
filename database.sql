CREATE DATABASE forecast;



CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE logins(
  user_id uuid DEFAULT uuid_generate_v4(),
  user_name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL UNIQUE,
  user_password VARCHAR(255) NOT NULL,
  role VARCHAR(20),
  PRIMARY KEY(user_id)
);


CREATE TABLE datasave (
  id SERIAL PRIMARY KEY,
  user_id VARCHAR(255) NOT NULL,
  saves JSON
);