-- Заказы курьеров
SELECT c.name, COUNT(*) AS n, SUM(o.total) AS revenue
FROM couriers c JOIN orders o ON c.id=o.courier_id
GROUP BY c.id ORDER BY revenue DESC;

-- Курьеры без заказов
SELECT name FROM couriers
WHERE id NOT IN (SELECT courier_id FROM orders WHERE courier_id IS NOT NULL);
