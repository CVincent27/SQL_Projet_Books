# Combien de livres ont été écrits dans chaque pays ?
SELECT c.country, COUNT(c.country) as nbr_book
FROM book b
JOIN author a
ON b.author_id = a.author_id
JOIN country c 
ON a.country_id = c.country_id
GROUP BY c.country