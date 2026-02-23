-- ISDATE

SELECT
	ISDATE('123') DateCheck1,
	ISDATE('2025-08-20') DateCheck2,
	ISDATE('20-08-2025') DateCheck3,
	ISDATE('2025') DateCheck4,
	ISDATE('08') DateCheck5