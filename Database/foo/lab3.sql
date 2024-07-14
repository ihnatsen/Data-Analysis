Create Or Replace Function buffer(inout a int, inout b int) AS $$
DECLARE bf int;
BEGIN
	bf := a;
	a := b;
	b := bf;
END;
$$ Language plpgsql;

CREATE OR REPLACE FUNCTION get_perimeter(a real, b real, c real) RETURNS real AS $$
DECLARE perimeter real;
BEGIN 
	perimeter := a + b + c;
	sqrt
	return perimeter;
END;
$$ LANGUAGE plpgsql;

SELECT get_perimeter(3, 4, 5)