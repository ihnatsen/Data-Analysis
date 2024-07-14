CREATE VIEW get_max
as SELECT max(price) From products as max

Select max From get_max

Select id, price, name
	From products, get_max
	Where products.price = get_max.max

-- or 
Select id, price, name
	From products Join get_max
	ON products.price = get_max.max