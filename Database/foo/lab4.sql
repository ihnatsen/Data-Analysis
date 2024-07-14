CREATE OR REPLACE FUNCTION modul(n int, out results varchar)  AS $$
BEGIN
	if n > 0 THEN
	results = '>0';
	elseif n < 0 THEN
	results = '<0';
	else  
	results = '=0';
	end if;
END;
$$ language plpgsql;

SELECT modul(-1);
SELECT modul(1);
SELECT modul(0)

