# Write your MySQL query statement below
(SELECT u.name as results
    FROM movierating mr
    JOIN users u on mr.user_id = u.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(*) DESC, u.name ASC
    limit 1
)

UNION ALL

(
SELECT m.title as results
    FROM movierating mr
    JOIN movies m ON mr.movie_id = m.movie_id
    WHERE DATE_FORMAT(mr.created_at, '%M, %Y') = 'February, 2020'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    limit 1
)