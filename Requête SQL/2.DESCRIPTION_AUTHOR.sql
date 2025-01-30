# 1. Quel est le livre le plus vendu au monde  ?
# SELECT book_name, MAX(units_sold) as max_units_sold
# FROM book_projet.book_data
# GROUP BY book_name

# 2. Pour chaques autheur, combien ont-ils vendus, leur gain ?
SELECT author, SUM(units_sold) as total_sold, book_average_rating, ROUND(SUM(units_sold * sale_price - publisher_revenue),1) as gain
FROM book_projet.book_data
GROUP BY author, book_average_rating 
