Create OR REPLACE FUNCTION get_max_prace() Returns int AS $$
BEGIN 
	return sum(products.price) from products;
END;
$$ Language plpgsql;

-- call foo
Select * From get_max_prace()

-- or
Select get_max_prace()

Create OR REPLACE function get_second_max_price() Returns int AS $$ 
BEGIN 
	RETURN(
	SELECT max(price) FROM products 
	WHERE price < (SELECT max(price) FROM products));
END;
$$ language plpgsql;

SELECT get_second_max_price()

Create or replace function get_boundaries(out max_price float, out min_price float) AS $$
Begin 
	max_price :=(SELECT max(price) FROM products);
	min_price :=(SELECT min(price) FROM products);
END;
$$ Language plpgsql;

SELECT * FROM get_boundaries()


CREATE OR REPLACE FUNCTION my_sum(arg_one int, arg_two int, out results int) AS $$
BEGIN
	results := arg_two + arg_one;
END;
$$ LANGUAGE plpgsql;

SELECT my_sum(price,1) FROM products

SELECT * FROM products; 
SELECT * FROM product_types;

DROP FUNCTION get_product_by_type; 
CREATE OR REPLACE FUNCTION get_product_by_type(type_name_ varchar) RETURNS TABLE (id int, name varchar)   AS $$
BEGIN
	return query(
	SELECT p.id, p.name FROM products as p JOIN product_types as pt
	ON p.type_id = pt.id 
	WHERE pt.type_name = type_name_);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_product_by_type('Книга')

SELECT p.name FROM products as p JOIN product_types as pt
	ON p.type_id = pt.id 
	WHERE pt.type_name = 'Книга'

