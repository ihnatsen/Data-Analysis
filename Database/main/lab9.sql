-- subqueries
Select id, name, price From products
Where price = (Select max(price) From products)

Select * From products
Where id in (Select product_id From sales)

UPDATE products 
SET price = price + 500
WHERE type_id in (SELECT id FROM product_types WHERE type_name = 'Книга')

Select * FROM products