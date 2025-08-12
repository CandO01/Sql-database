-- SELECT id, brand, model FROM cars ORDER by id
-- SELECT id, dealership_id, brand, model FROM cars

-- SOLUTION ONE
-- SELECT brand, model, price, sold, sold_price
-- FROM sold_cars SC
-- LEFT JOIN cars C ON SC.cars_id = C.id;

/*
	Select name, role, city, state
		From the staff table
	Left join with the dealerships table where the dealership_id in staff
			matches with the id in dealerships
*/
-- SOLUTION 2
SELECT name, role, city, state
FROM staff S
LEFT JOIN dealership D ON S.dealership_id = D.id;