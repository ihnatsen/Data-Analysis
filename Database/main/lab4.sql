-- Data manipulation language DML
-- INSERT INTO

create table if not exists bank(
	id serial primary key,
	name varchar(30),
	last_name varchar(30),
	age int,
	balance numeric(10,2)
)

Drop Table if exists bank;

ALTER TABLE bank Rename Column name to first_name;


-- add record into table
INSERT INTO bank(first_name, last_name, age, balance)
Values('Anna', 'Kovalska', 24, 144.88)
Values('Ivan', 'Ihnatsenkau', '22', 3000)
	
-- change recods
Update bank 
SET balance=balance-500, age = 21
Where first_name = 'Ivan' and last_name = 'Ihnatsenkau'

Update bank 
Set balance=balance+500
Where first_name = 'Anna' and last_name ='Kovalska'

INSERT INTO bank(first_name, last_name, age, balance)
Values('Bill', 'Butcher', 40, 5003.45)

-- del recods
DELETE FROM bank
Where first_name = 'Bill'

-- del all date but not table
DELETE FROM bank

