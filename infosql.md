-- -- Adding data to the database
-- -- Retro rides have acquired two new cars this week:
-- -- 1. A Ford Escort RS2000 from 1978 in blue
-- -- the car is from 1978, a 4/5 condition
-- -- the car has not been sold and is listed at $39,000
-- -- 2. A 1977 Aston Martin V8 Vantage in dark green
-- -- The car is in perfect condition
-- -- -- and is listed for sale at $145,000
-- INSERT INTO cars(
-- brand, model, year, price, color, condition, sold
-- ) VALUES
-- ('Ford', 'Escort RS2000', 1978, 39000, 'Blue', 4, false),
-- ('Aston Martin', 'V8 Vantage', 1977, 145000, 'Dark green', 5, false);

-- -- -- Updating the data in the Database
-- -- -- Assuming a car has been sold and we nedd to update the database we use the key word UPDATE

-- UPDATE cars
-- SET sold = TRUE
-- WHERE brand = 'Triumph'
-- AND model = 'TR6';

-- -- -- Example 2 on Update

-- -- -- Update the record for the Aston Martin DB4 with ID 14
-- -- -- set the condition to 5
-- -- -- and the price to 465000

-- UPDATE cars
-- SET condition = 5,
-- price = 465000
-- WHERE id = 14;

-- -- -- Example 3 on Update
-- -- -- Assuming the cars has been affected by flooding that enters the car show room and the dealer that owns the showroom wants to sell off at a lower price bcos they do not have the extra cash to repair the damaged cars. So update the database with this info
-- -- -- Set the condition to 1
-- -- -- and the price to $10,000
-- -- -- where the car's brand is Porsche
-- -- -- and sold is false

-- -- -- SOLUTION
-- UPDATE cars
-- SET condition = 1,
-- price = 10000
-- WHERE brand = 'Porsche'
-- AND sold IS FALSE

-- -- Deleting data from the database
-- -- In order to delete data from the database we use the keyword DELETE FROM and then the conditions for removing those data from the database. See the example below

-- -- Delete from the cars table, any record where
-- -- condition is

-- -- SOLUTION
-- DELETE FROM cars
-- WHERE condition = 0;

-- -- To clean up the database at the end of the financial year so that we have only the cars that ar not sold yet in the database and removed the ones that has been sold

-- -- SOLUTION
-- DELETE FROM cars
-- WHERE sold = TRUE

-- -- -- SELECT brand, model, year, price, color, condition, sold FROM cars
-- -- -- Exercise 1
-- -- -- WHERE price < 50000;

-- -- -- Exercise 2
-- -- -- NOT operator
-- -- -- Customers that wants cars but do not want 1965 cars
-- -- -- WHERE year != 1965;

-- -- -- Exercise 3
-- -- -- Customers that wants cars but not color yellow
-- -- -- WHERE color <> 'yellow'

-- -- -- Exercise 4
-- -- -- If the customer wants say touch of green in the car
-- -- -- WHERE color LIKE '%green%';

-- -- -- Exercise 5
-- -- -- If the customer do not want anything like green color in the car
-- -- -- WHERE color NOT LIKE '%green%';

-- -- -- Exercise 6
-- -- -- Cars where the model is likeDB
-- -- -- WHERE model LIKE 'DB\_';

-- -- -- Exercise 7
-- -- -- AND OPERATOR
-- -- -- ADDING MULTIPLE CONDITIONS TOGETHER
-- -- -- WHERE color NOT LIKE '%green%'
-- -- -- AND model LIKE 'DB\_'
-- -- -- AND year > 1964;

-- -- -- Exercise 8
-- -- -- Select the brand, model, year, condition and price from cars
-- -- -- where the condition is 3 or higher
-- -- -- and the year is before 1970

-- -- -- Exercise 9
-- -- -- WHERE condition >= 3
-- -- -- AND year < 1970
-- -- -- AND price < 100000;

-- -- -- Exercise 10
-- -- -- Select cars made between 1980 and 1989
-- -- -- show the brand, model, year and price

-- -- -- WHERE year >= 1980
-- -- -- AND year <= 1989;

-- -- -- Exercise 11S
-- -- -- BETWEEN OPERATOR
-- -- -- instead of repeating the word year let us use the BETWEEN word
-- -- -- WHERE year BETWEEN 1980 AND 1989;

-- -- -- Exercise 12
-- -- -- Select brand, model, condition, color and price from cars
-- -- -- where the price is between $20,000 and $60,000
-- -- -- and the condition is between 1 and 3
-- -- -- and the color contains red
-- -- -- WHERE price BETWEEN 20000 AND 60000
-- -- -- AND condition BETWEEN 1 AND 3
-- -- -- AND color LIKE '%red%';

-- -- -- Exercise 13
-- -- -- OR operator
-- -- -- Find the brand, model, condition and price of cars
-- -- -- where the price is less than $250,000
-- -- -- or the brand is Porsche
-- -- -- WHERE (price < 250000
-- -- -- OR brand = 'Porsche')
-- -- -- AND condition > 3;

-- -- -- Exercise 14
-- -- -- Search for brand, model, color, year and price of cars
-- -- -- where the color is a shade of red
-- -- -- or the year is between 1960 and 1969
-- -- -- WHERE (color LIKE '%red%'
-- -- -- OR year BETWEEN 1960 AND 1969)
-- -- -- AND sold IS false;

-- -- -- Exercise 15
-- -- -- IN OPERATOR (this is used for multiple possible values)
-- -- -- Select the brand, model, price and sold columns from cars
-- -- -- the brand can be 'Ford', 'Chevrolet' or 'Ferrari'
-- -- -- sold must be false
-- -- -- WHERE brand IN ('Ford', 'Chevrolet', 'Ferrari')
-- -- -- AND sold IS FALSE;

-- -- -- Exercise 16
-- -- -- Select the brand, model, condition and year from cars
-- -- -- Where the year is 1961, 1963, 1965, 1967 or 1969
-- -- -- and the condition is 3 or higher
-- -- -- and sold is false
-- -- -- WHERE year IN (1961, 1963, 1965, 1967, 1969)
-- -- -- AND condition >= 3
-- -- -- AND sold IS FALSE;

-- -- -- Exercise 17
-- -- -- filter out any cars which are sold
-- -- -- show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
-- -- -- or the price is less than $50000
-- -- -- WHERE sold IS FALSE
-- -- -- AND (brand NOT IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
-- -- -- OR price < 50000)

-- -- -- Exercise 18
-- -- -- Select brand, model, and color from cars
-- -- -- where the color is 'red'
-- -- -- and the brand is not 'Ferrari'
-- -- -- and the car has not been sold
-- -- -- WHERE color LIKE '%red%'
-- -- -- AND brand <> 'Ferrari'
-- -- -- AND sold IS FALSE;

-- -- -- Exercise 19
-- -- -- where the color is not red, blue, or white
-- -- -- and the brand is none of: Aston Martin, Bentley or Jaguar
-- -- -- and sold is false
-- -- -- WHERE color NOT IN ('red', 'blue', 'white')
-- -- -- AND brand NOT IN ('Aston Martin', 'Bentley', 'Jaguar')
-- -- -- AND sold IS FALSE;

-- -- -- Exercise 20
-- -- -- Select brand, model, year, sold from cars
-- -- -- where the brand is 'Dodge' and year is in the 60s
-- -- -- or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
-- -- -- only select cars where sold is not true
-- -- -- WHERE sold IS FALSE
-- -- -- AND (
-- -- -- (brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
-- -- -- OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979)
-- -- -- OR (brand NOT LIKE ('BMW, Benz') AND year BETWEEN 2000 AND 2024)
-- -- -- );

-- -- -- Exercise 21
-- -- -- WHERE SOLD IS FALSE
-- -- -- AND (
-- -- -- price !=20000 AND condition > 3
-- -- -- );

-- -- -- Exercise 22
-- -- -- ORDER BY
-- -- -- NB: In order by we do not use the word WHERE
-- -- -- Select the brand, model, condition and price from cars
-- -- -- order the table by condition in descending order
-- -- -- and by price in ascending order
-- -- -- WHERE SOLD IS FALSE
-- -- -- AND condition != 5
-- -- -- ORDER BY condition DESC, price ASC;

-- -- -- Exercise 23
-- -- -- LIMIT and ORDER
-- -- -- Select the brand, model, year and price from the cars table
-- -- -- order the results by the price in descending order
-- -- -- limit the results to 1
-- -- -- ORDER BY price DESC
-- -- -- Limit 1;

-- -- -- Exercise 24
-- -- -- Select the brand, model, color and price from cars
-- -- -- where the color is a shade of 'red'
-- -- -- and sold is false
-- -- -- order by price
-- -- -- limit the results to 5
-- -- -- WHERE color LIKE '%red%'
-- -- -- AND sold IS FALSE
-- -- -- ORDER BY price
-- -- -- LIMIT 5;

-- -- -- AGGREGATION
-- -- -- COUNT AND SUM
-- -- -- -- Exercise 25
-- -- -- SELECT COUNT(\*) AS total_sold FROM cars
-- -- -- WHERE sold IS TRUE;

-- -- -- Exercise 26
-- -- -- Sum the price of cars
-- -- -- where sold is true
-- -- -- Use the alias total_earnings in your output
-- -- -- SELECT SUM(price) AS total_earnings FROM cars
-- -- -- WHERE sold IS TRUE

-- -- -- MAX, MIN AND AVG
-- -- -- Exercise 27
-- -- -- Select the maximum retail price
-- -- -- where sold is true
-- -- -- Use most_expensive as an alias
-- -- -- SELECT MAX(price) AS most_expensive FROM cars
-- -- -- WHERE sold IS TRUE;

-- -- -- Exercise 28 AVG
-- -- -- Use the AVG aggregate function to find the average price
-- -- -- where the brand is Bentley
-- -- -- SELECT FLOOR(AVG(price)) AS average FROM cars
-- -- -- WHERE brand = 'Bentley';

-- -- -- Exercise 29
-- -- -- COMBINING ALL THE THREE AGGREGATION I.E MAX, MIN AVG
-- -- -- Select the average, minimum and maximum price from cars
-- -- -- where sold is true
-- -- -- Round the average up to the nearest whole number
-- -- -- and use 'avg' as the alias for that result

-- -- -- SELECT
-- -- -- MAX(price) AS highest_price,
-- -- -- MIN(price) AS lowest_price,
-- -- -- CEIL(AVG(price)) AS avg
-- -- -- FROM cars
-- -- -- WHERE sold IS TRUE;

-- -- -- GROUP BY OPERATOR (NB: The word GROUP BY must be in use)

-- -- -- Exercise 30
-- -- -- Select the brand, and a count of the brand from cars
-- -- -- alias the count as brand_count
-- -- -- group by the brand column
-- -- -- SELECT
-- -- -- brand,
-- -- -- COUNT(_) AS brand_count,
-- -- -- -- Adding subquery
-- -- -- (SELECT COUNT(_) FROM cars AS total_count)
-- -- -- FROM cars
-- -- -- GROUP BY brand

-- -- -- Exercise 31
-- -- -- Select the condition, and a count of the condition from cars
-- -- -- group by the condition column
-- -- -- SELECT
-- -- -- condition,
-- -- -- COUNT(condition) AS condition_count FROM cars
-- -- -- GROUP BY condition;
-- -- -- Exercise 32
-- -- -- Select:
-- -- -- _ the brand
-- -- -- _ a count of the brand
-- -- -- _ and an average of the price for each brand
-- -- -- _ round the average down to the nearest number
-- -- -- \* alias the average as 'AVG' in your output
-- -- -- From cars where
-- -- -- the car has not been sold
-- -- -- Group the table by brand.

-- -- -- SOLUTION
-- -- -- SELECT
-- -- -- brand,
-- -- -- COUNT(brand),
-- -- -- CEIL(AVG(price)) AS avg
-- -- -- FROM cars
-- -- -- WHERE sold IS FALSE
-- -- -- GROUP BY brand
-- -- -- -- Introducing HAVING condition to the equation
-- -- -- HAVING COUNT(brand) > 1;

-- -- -- Exercise 33
-- -- -- Select:
-- -- -- _ year
-- -- -- _ a count of cars from that year, aliased as car_count
-- -- -- _ the maximum price
-- -- -- _ the minimum price
-- -- -- from the table cars
-- -- -- where the car has been sold
-- -- -- group by year
-- -- -- only show years where more than one car has been sold from that year
-- -- -- order the result by car_count

-- -- -- SOLUTION
-- -- -- SELECT
-- -- -- year,
-- -- -- COUNT(year) AS car_count,
-- -- -- MAX(price),
-- -- -- MIN(price)
-- -- -- FROM cars
-- -- -- WHERE sold IS TRUE
-- -- -- GROUP BY year
-- -- -- HAVING COUNT(year) > 1
-- -- -- ORDER BY car_count;

-- -- -- Exercise 34
-- -- -- Select brand, model, and year from cars
-- -- -- only show the oldest 5 cars in the database
-- -- -- show cars which haven't been sold
-- -- -- SOLUTION
-- -- -- SELECT brand, model, year FROM cars
-- -- -- WHERE sold IS FALSE
-- -- -- ORDER BY year
-- -- -- LIMIT 5;

-- -- -- Exercise 35
-- -- -- Select color and count how many cars have each color
-- -- -- find cars which have not been sold
-- -- -- order by count in descending order
-- -- -- only show results where the count is greater than 2

-- -- -- solution
-- -- SELECT
-- -- color,
-- -- COUNT(color) AS color_count
-- -- FROM cars
-- -- WHERE sold IS FALSE
-- -- GROUP BY color
-- -- HAVING COUNT(color) > 2
-- -- ORDER BY color_count DESC
