# Quels sont les livres appartenant au genre "Philosophie" ?
SELECT b.name, g.genre
FROM book b
JOIN genre g
ON b.genre_id = g.genre_id
WHERE g.genre = 'Philosophie'