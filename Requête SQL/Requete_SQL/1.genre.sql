# Quel genre de livre apparaît le plus ?
SELECT g.genre, COUNT(b.name) as nbr_book
FROM book b 
JOIN genre g
ON b.genre_id = g.genre_id
GROUP BY g.genre
ORDER BY nbr_book DESC
LIMIT 10;