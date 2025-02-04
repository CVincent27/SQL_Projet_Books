# Quel livre a rapporté le plus (quantity * price) ?
SELECT b.name, s.price_per_unit, SUM(s.quantity * s.price_per_unit) as CA_book_€
FROM book b
JOIN sale s
ON b.book_id = s.book_id
GROUP BY b.name, s.price_per_unit
ORDER BY CA_book_€ DESC
