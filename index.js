import { PGlite } from "@electric-sql/pglite";
import fs from 'fs'

(async () => {
    const db = new PGlite()

    // set up the DB file
    const createTables = fs.readFileSync('create-tables.sql', 'utf8')
    const insertCarsData = fs.readFileSync('insert-cars-data.sql', 'utf8')
    await db.exec(createTables);
    await db.exec(insertCarsData);

    // run the changes made in the DM section
    const crudOperations = fs.readFileSync('crud-operations.sql', 'utf8')
    await db.exec(crudOperations)

    const populateTables = fs.readFileSync('populate-tables.sql', 'utf8')
    await db.exec(populateTables)


    // Load the SQL query file
    const query = fs.readFileSync('query.sql', 'utf8');

    // run the query from query file
    const response = await db.exec(query)

    console.clear();
console.log("🧪 Full response:", response);
// console.table(response?.rows || []);
  console.table(response?.[0]?.rows ?? []);

})();
