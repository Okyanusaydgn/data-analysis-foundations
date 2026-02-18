-- Show a list of customers' first names together with their country in on column.

SELECT
first_name,
LEN(first_name) len_name,
LEN(TRIM(first_name)) len_trim_name,
LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name))
--WHERE first_name != TRIM(first_name)