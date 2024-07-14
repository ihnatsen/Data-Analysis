-- select records
Select * From superheroes
Where gender = 'Male Characters'

--comparison operator
-- =, <, >=, >, <=, <>, !=, between, in, like

-- between
Select Distinct(year) From superheroes 
Where year Between 2000 and 2005

-- in
Select * from superheroes
Where year in (2000, 2001, 2002, 2003, 2004, 2005)

-- usage like
-- % - любое количество символов.
-- '_' - ровно 1 символ.
Select * 
From superheroes
Where name Like 'Alex%'

Select * 
From superheroes 
Where name Like '____ Olsen%'

-- logical operation
-- AND, OR, NOD

-- AND
Select * From superheroes
Where gender = 'Female Characters' And align = 'Bad Characters'

-- OR 
Select * from superheroes
Where eye Like 'Yellow%' or eye Like 'Green%'

-- NOT
Select * from superheroes
Where Not(eye Like 'Yellow%' or eye Like 'Green%')




