# Quels sont les livres publiés entre 1900 et 1999?
SELECT name, release_year
FROM book 
WHERE release_year BETWEEN 1900 AND 1999
ORDER BY release_year DESC