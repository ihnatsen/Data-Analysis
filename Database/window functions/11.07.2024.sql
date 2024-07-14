Create View  main
	as 
Select o.order_date::DATE as date, c.name as name, p.name as product_name, s.quantity, p.price, pt.type_name 
From 
	orders as o 
	Join customers as c ON c.id = o.customer_id 
	Join sales as s ON s.order_id = o.id
	Join products as p ON p.id = s.product_id
	Join product_types as pt ON pt.id = p.type_id;


select * from main;


Select *,
	price - min(price) over(w) as min_difference,
	price - max(price) over(w) as max_difference,
	price - avg(price) over(w) as avg_difference,
	count(*) over(w) as count_,
	max(main.date) over(partition by main.quantity)
	from main 
	WINDOW w as (partition by main.type_name)
	Order by name DESC


-- row_number()
Select *, row_number() over (w)
	From main
	window w as (partition by main.name order by date)

-- rank()
Select *, rank() over(w)
	From main
	window w as (partition by main.name)

-- dense_runk()
Select *, dense_rank() over(w)
	From main
	window w as (partition by main.name order by price)



