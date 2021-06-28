
--update the values for the new added column.

UPDATE public.listings
set geom=ST_SetSRID(ST_MakePoint(longitude, latitude),4326);


-- query for the nearest destination by the origin.
SELECT name, geom 
FROM public.listings
order by ST_DISTANCE(geom, ST_SetSRID(ST_MakePoint(2.121275,43.380775),4326))
LIMIT 5;


-- query distance within 
SELECT name, geom
FROM public.listings
WHERE ST_DWithin(
	geom::geography,
	ST_SetSRID(
		ST_MakePoint(2.121275,41.380775),4326)::geography, 300);
