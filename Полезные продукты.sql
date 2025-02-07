SELECT DISTINCT product_name
FROM Products;

SELECT p.product_id, p.product_name, p.price
FROM Products p
JOIN Nutritional_Information ninf ON p.product_id = ninf.product_id
WHERE ninf.fiber > 5;

SELECT p.product_name
FROM Products p
JOIN Nutritional_Information ninf ON p.product_id = ninf.product_id
ORDER BY ninf.protein DESC
LIMIT 1;

SELECT p.category_id, SUM(p.calories) AS total_calories
FROM Products p
JOIN Nutritional_Information ninf ON p.product_id = ninf.product_id
WHERE ninf.fat > 0
GROUP BY p.category_id;

SELECT c.category_name, AVG(p.price) AS average_price
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_name;