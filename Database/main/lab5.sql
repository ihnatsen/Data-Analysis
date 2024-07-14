-- data grouping
-- foo: AVG, COUNT, MAX, MIN, SUM
Select align, Count(*) From superheroes
Group By align

SELECT align, Count(*), Sum(appearances)
	FROM superheroes
Group by align

SELECT align, AVG(appearances), sum(appearances)/Count(*) as mean
FROM superheroes
Group By align

Select year, MIN(appearances), MAX(appearances) as E1
FRom superheroes 
Group by year 
ORDER BY E1 DESC

-- filtering group results
Select hair, Count(*) From superheroes
Where gender='Female Characters'
Group by(hair)
Having count(*) > 10