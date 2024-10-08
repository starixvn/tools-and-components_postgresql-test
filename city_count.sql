CREATE OR REPLACE FUNCTION public.city_count(
	country_id integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
AS $BODY$
DECLARE 
	cityCount integer;
BEGIN
	SELECT  COUNT(*) INTO cityCount
	FROM city
	WHERE country_id = country_id;
	
	RETURN cityCount;
END;
$BODY$;
