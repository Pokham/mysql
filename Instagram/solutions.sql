--#1. Finding 5 oldest users
SELECT *
FROM users
ORDER BY created_at
LIMIT 5;

-- #2. Most popular Registration Date
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- #3. Identify Inactive Users (users with no photos)
SELECT username
FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- #4. Identify most popular photo (and user who created it)
SELECT 
    username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- #5. Calculate avg number of photos per user
-- total number of photos/total number of users    
SELECT
    (SELECT COUNT(*) FROM photos)/(SELECT COUNT(*) FROM users) AS avg;

-- #6. MOst popular hastags
SELECT 
    tags.tag_name,
    COUNT(*) AS total    
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY total DESC LIMIT 5;

-- #7. Finding Bots - users who have liked every single photo
SELECT
    username,
    COUNT(*) as num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
