Select c.name, o.order_date, s.quantity, p.name, p.price, pt.type_name
FROM customers as c 
	JOIN orders as o ON c.id = o.customer_id 
	JOIN sales as s ON s.order_id = o.id 
	JOIN products as p ON p.id = s.product_id
	JOIN product_types as pt ON pt.id = p.type_id
Where c.id = 2