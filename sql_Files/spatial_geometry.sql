--create a point by using spatial SQL.
SELECT ST_SetSRID(ST_MakePoint(11.978845,57.705644),4326);


--create a line by using spatial SQL.
SELECT ST_SetSRID(ST_MakeLine(
	ST_MakePoint(11.978866,57.705644),
	ST_MakePoint(11.978860,57.705600)
				  ),4326);

--create a polygon by using spatial SQL.
SELECT ST_SetSRID(ST_MakePolygon(
	ST_MakeLine(ARRAY [ST_MakePoint(11.978866,57.705644),
					   ST_MakePoint(11.978888,57.705644),
					   ST_MakePoint(11.978888,57.705600),
					   ST_MakePoint(11.978866,57.705644)])),4326);