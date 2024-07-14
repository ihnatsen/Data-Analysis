-- Data Definition Language DDL 

Create Table If Not Exists superheroes(
	id serial primary key,
	name varchar(100),
	align varchar(30),
	eye varchar(30),
	hair varchar(30),
	gender varchar(30),
	apperances int,
	year int,
	universe varchar(10)
)

-- Drop Table superheroes

-- table change

-- add column
ALTER TABLE superheroes ADD COLUMN alive Boolean;

-- del column
ALTER TABLE superheroes Drop column alive;

-- rename column
Alter table superheroes Rename Column name To hero_name

-- rename table
Alter table superheroes Rename To comic_characters;	

-- Data Manipulation Language(Select, Insert, Update, Delet,)