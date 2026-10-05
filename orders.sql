-- Выручка ресторанов
SELECT r.name, SUM(o.total) FROM restaurants r
JOIN orders o ON r.id=o.restaurant_id
GROUP BY r.id ORDER BY 2 DESC;

-- Средний чек
SELECT AVG(total) FROM orders;

-- Заказы за неделю
SELECT * FROM orders WHERE created >= date('now','-7 day');
