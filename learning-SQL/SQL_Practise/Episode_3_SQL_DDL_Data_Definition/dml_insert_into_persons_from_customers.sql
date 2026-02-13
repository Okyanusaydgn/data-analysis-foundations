-- Insert data from 'customers' into persons

INSERT INTO persons (id, person_name, birth_data, phone)
SELECT 
id,
first_name,
NULL,
'Unkown'
FROM customers

SELECT * FROM customers
SELECT * FROM persons