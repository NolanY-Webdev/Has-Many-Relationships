-- \i ./has_many_blogs.sql

-- 1. Create a new postgres user named `has_many_user`
\c EnemyBoss;
DROP USER IF EXISTS has_many_user;
DROP DATABASE IF EXISTS has_many_blogs;
CREATE USER has_many_user;
-- 1. Create a new database named `has_many_blogs` owned by `has_many_user`
CREATE DATABASE has_many_blogs OWNER has_many_user;
\c has_many_blogs;

-- 1. Before each create table statement, add a drop table if exists statement.
-- 1. In `has_many_blogs.sql` Create the tables (including any PKs, Indexes, and Constraints that you may need) to fulfill the requirements of the **has_many_blogs schema** below.
-- 1. Create the necessary FKs needed to relate the tables according to the **relationship table** below.
DROP TABLE IF EXISTS users;
CREATE TABLE users
(
id serial PRIMARY KEY NOT NULL,
username character varying(90) NOT NULL,
first_name character varying(90) DEFAULT NULL,
last_name character varying(90) DEFAULT NULL,
created_at timestamp NOT NULL DEFAULT now(),
updated_at timestamp NOT NULL DEFAULT now()
);
DROP TABLE IF EXISTS posts;
CREATE TABLE posts
(
id serial PRIMARY KEY NOT NULL,
title character varying(180) DEFAULT NULL,
url character varying(510) DEFAULT NULL,
content text DEFAULT NULL,
created_at timestamp NOT NULL DEFAULT now(),
updated_at timestamp NOT NULL DEFAULT now(),
author integer REFERENCES users (id) NOT NULL
);
DROP TABLE IF EXISTS comments;
CREATE TABLE comments
(
id serial PRIMARY KEY NOT NULL,
body character varying(510) DEFAULT NULL,
created_at timestamp NOT NULL DEFAULT now(),
updated_at timestamp NOT NULL DEFAULT now(),
on_post integer REFERENCES posts (id) NOT NULL,
author integer REFERENCES users(id) NOT NULL
);


-- 1. Run the provided `scripts/blog_data.sql`
\i ./scripts/blog_data.sql;