Select products.name, product_types.type_name
From products Join product_types
ON products.type_id = product_types.id


SELECT p.name, t.type_name
FROM products AS p JOIN product_types as t
ON p.id = t.id
