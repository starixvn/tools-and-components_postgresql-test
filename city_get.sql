CREATE OR REPLACE PROCEDURE public.city_get(IN country_id integer)
LANGUAGE 'sql'
AS $BODY$
	SELECT *
	FROM city
	WHERE country_id = country_id
$BODY$;