-- Type Join 
-- Inner Join(Intersection),
-- Right Join, Left Join
-- CROSS JOIn
Select p.name, type_id, price
From products as p Join product_types as t
ON p.type_id = t.id

-- Left Join
Select p.name, t.type_name
From products as p Left Join product_types as t
ON p.type_id = t.id

-- Full outer Join
Select p.name, t.type_name FROM products as p FUll JOIN product_types as t
ON p.type_id = t.id

-- CROSS JOIN
Select p.name, t.type_name FROM products as p CROSS JOIN product_types as t

-- CROSS JOIN
Select products.name, product_types.type_name FROM  product_types  CROSS JOIN products 
