--find out the destinations within a defined polygon

 SELECT 
 l.name as Hotel, 
 l.room_type as Room, 
 l.price as Price,
 s.aeb as Code,
 l.geom as locat
FROM public.listings as l
join public.stat_polygon as s
on ST_Within(l.geom,s.geom)

--perform an aggregation on the spatial join return.

SELECT count(*),
	s.aeb as code
from public.listings as l
join public.stat_polygon as s
on ST_Within(l.geom,s.geom)
Group by code
order by count desc;


