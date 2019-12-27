
## Filtering in sql

SQL queries can be far more sophisticated and targeted than the ones you made in Excel.

Unlike Excel, you usually save your questions, not your answers, in SQL. You can filter **vertically** by selecting only the columns (fields) you want to see, without changing the original data. You can filter **horizonally** by writing WHERE statements to limit the rows to your criteria.

The key words you need are:

    SELECT [your list of columns or fields]
      FROM [your table name]
      WHERE [a column ] = 'YOUR VALUE'
      ORDER BY [a column]
      LIMIT [number of rows]



Example 1:
This query selects all the most recent 1000 animals
You can rename columns as you select them, but you have to use the original name in the WHERE statement.


  Traps:
  * The list of fields you want to see is separated by commas, but there should be no comma after the last one. If you get an error that says there is something wrong near the keyword "FROM", check to see if you have an extra comma.
  * You have to know how the words are spelled in the database. It doesn't matter how words are spelled in the rest of the world.




Other connectors are:

    ... WHERE species IN ('Cat', 'Bird')
        AND outcome_type = 'Euthanasia'


### Is it "AND" or is it "OR"?

Boolean logic is exactly the opposite of what we say. "AND" means BOTH conditions must be true. It narrows your net so fewer fish can get through. "OR" means EITHER condition can be true. It makes your net bigger so more fish can get through:

If you say: "I want cats and dogs" then the SQL connector is "OR". Note also that your sentence is plural but each item in our dataset is just one animal, so it's singular

       WHERE species = 'Cat'
          OR
             species = 'Dog'

If you say "I want only dogs listed as Labradors", then it might be

     WHERE species = 'Dog'
       AND
           breed  LIKE 'Labrador%'

(I lied. You also need the word "LIKE")

### NULL IS NOTHING
"NULL" means that there is no value in the field for a given record. Instead of searching for spaces, you look for a value that IS NULL or IS NOT NULL. Null values are ephemeral. They are neither larger nor smaller than any other value. They're not equal to anything, even another null.

In other words, null values are traps. Don't fall for them.
