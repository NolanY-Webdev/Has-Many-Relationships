\i ./has_many_blogs.sql;

-- 1. Create a query to get all fields from the `users` table
SELECT *
FROM users;

-- 1. Create a query to get all fields from the `posts` table where the `user_id` is 100
SELECT posts.id, title, url, content, posts.created_at, posts.updated_at, author
FROM posts
INNER JOIN users
on posts.author = users.id
WHERE users.id = 100;

-- 1. Create a query to get all posts fields, the user's first name, and the user's last name, from the `posts` table where the user's id is 200
SELECT posts.id, title, url, content, posts.created_at, posts.updated_at, author, last_name, first_name
FROM posts
INNER JOIN users
on posts.author = users.id
WHERE users.id = 200;

-- 1. Create a query to get all posts fields, and the user's username, from the `posts` table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'
SELECT posts.id, title, url, content, posts.created_at, posts.updated_at, author, username
FROM posts
INNER JOIN users
on posts.author = users.id
WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

-- 1. Create a query to get usernames from the `users` table where the user has created a post after January 1, 2015
SELECT username
FROM posts
INNER JOIN users
on posts.author = users.id
WHERE posts.created_at > '2015-01-01';

-- 1. Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015


-- 1. Create a query to get the all rows in the `comments` table, showing post title (aliased as 'Post Title'), and the all the comment's fields


-- 1. Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015


-- 1. Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015


-- 1. Create a query to get the all rows in the `comments` table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'


-- 1. Create a query to get the post title (aliased as post_title), first name of the author of the post, last name of the author of the post, and comment body (aliased to comment_body), where the comment body contains the word 'matrix' ( should have 855 results )


-- 1. Create a query to get the first name of the author of the comment, last name of the author of the comment, and comment body (aliased to comment_body), where the comment body contains the word 'SSL' and the post content contains the word 'dolorum' ( should have 102 results )


-- 1. Create a query to get the first name of the author of the post (aliased to post_author_first_name), last name of the author of the post (aliased to post_author_last_name), the post title (aliased to post_title), username of the author of the comment (aliased to comment_author_username), and comment body (aliased to comment_body), where the comment body contains the word 'SSL' or 'firewall' and the post content contains the word 'nemo' ( should have 197 results )

