# Quelle est le nombre de livre vendu par mois ?
SELECT  MONTH(s.sale_date) as month, SUM(s.quantity) as total_sale
FROM sale s
GROUP BY month
ORDER BY total_sale DESC
