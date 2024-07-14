-- get all data 
Select * 
	From superheroes

-- column selection
Select name, gender 
	From superheroes

-- column aliases
-- В имяни альса нельзя использовать пробел. 
Select name as hero_name, gender 
	From superheroes

-- либо
Select name hero_name
	From superheroes

--selection of unique values
Select  (gender)
	From superheroes

--limited record value
Select * 
	From superheroes 
	Limit 10
