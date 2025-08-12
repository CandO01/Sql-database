-- This is to allow us to addd and extra column to the cars existing table

ALTER TABLE cars
ADD COLUMN dealership_id INTEGER;

-- 2. Insert data to backfill the dealership_id column

-- Update cars, set the dealership_id to 1
--  where the dealership_id IS NULL

UPDATE cars SET
dealership_id = 1
WHERE dealership_id IS NULL;

-- Add the NOT constraints
ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;

-- Add the foreign key contraints
ALTER TABLE cars
ADD CONSTRAINT dealership_fk FOREIGN KEY(dealership_id)
REFERENCES dealership(id);

/*
	Alter the cars table
		add a not null constraint to these columns:
			brand
			model
			year
			price
			color
			condition
			sold
*/
ALTER TABLE cars
ALTER COLUMN brand SET NOT NULL,
ALTER COLUMN model SET NOT NULL,
ALTER COLUMN year SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN color SET NOT NULL,
ALTER COLUMN condition SET NOT NULL,
ALTER COLUMN sold SET NOT NULL;