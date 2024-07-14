-- first foo
Create Or REPLACE FUNCTION say_hello() returns varchar AS $$
	BEGIN 
		return 'Hello, Wold!';
	END;
$$ Language plpgsql;

Select say_hello() 

-- my sum
Create Or Replace Function my_sum(a int, b int) returns int AS $$
	Begin 
	return a + b;
	END;
$$ LANGUAGE plpgsql;

SElect my_sum(1, 2)