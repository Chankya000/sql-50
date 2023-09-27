/* Write your T-SQL query statement below */
SELECT username AS results
FROM (SELECT TOP 1 u.name AS username, COUNT(u.user_id) AS num_ratings
        FROM Users u
        JOIN MovieRating mr
            ON u.user_id = mr.user_id
        GROUP BY u.name
        ORDER BY num_ratings DESC, username) sq1
UNION ALL
SELECT movie_title AS results
FROM (SELECT TOP 1 m.title AS movie_title, AVG(mr.rating*1.0) AS avg_rating
        FROM Movies m
        JOIN MovieRating mr
            ON m.movie_id = mr.movie_id
        WHERE mr.created_at >= '2/1/2020'
            AND mr.created_at <= '2/29/2020'
        GROUP BY m.title
        ORDER BY avg_rating DESC, title) sq2