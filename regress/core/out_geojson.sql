DROP TABLE IF EXISTS g;
CREATE TABLE g (
	g geometry,
	i integer,
	f real,
	t text,
	d date
);

INSERT INTO g (g, i, f, t, d)
VALUES ('POINT(42 42)', 1, 1.1, 'one', '2001-01-01');

INSERT INTO g (g, i, f, t, d)
VALUES ('LINESTRING(42 42, 45 45)', 2, 2.2, 'two', '2002-02-02');

INSERT INTO g (g, i, f, t, d)
VALUES ('POLYGON((42 42, 45 45, 45 42, 42 42))', 3, 3.3, 'three', '2003-03-03');

INSERT INTO g (g, i, f, t, d)
VALUES ('GEOMETRYCOLLECTION(POINT(42 42))', 4, 4.4, 'four', '2004-04-04');

SELECT 'gj01', ST_AsGeoJSON(g) AS g
	FROM g ORDER BY i;

SELECT 'gj02', ST_AsGeoJSON(g.*) AS gj
	FROM g ORDER BY i;


DROP TABLE g;