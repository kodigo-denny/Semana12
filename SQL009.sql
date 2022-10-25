
SELECT AVG(total), MIN(total), MAX(total), COUNT(*) AS cantidad, SUM(total) AS 'Total de ingresos' FROM 
	(SELECT order_id, SUM(total) AS total FROM
		(SELECT order_id, product_id, quantity, unit_price, quantity*unit_price AS total FROM order_details ) AS detalle
		GROUP BY order_id) AS procesado