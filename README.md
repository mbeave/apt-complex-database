# Apartment Complex Database

This is an example relational database of an apartment complex built using Oracle Database, specifically with the SQL Plus editor/CLI.

The database was designed first through an Entity Relationship diagram put together with draw.io.

Then, with the [ER diagram](https://raw.githubusercontent.com/mbeave/apt-complex-database/main/design/ER-Diagram.svg) as a reference, a [data dictionary](https://github.com/mbeave/apt-complex-database/blob/main/design/data-dictionary.pdf) was made demonstrating the tables and their parameters.

Finally, the SQL queries were written, first creating the tables and views, then inserting the values into the tables, and then running some queries on those tables and views. The last query drops all the tables and views from the database.

## How to Test

These queries will work best with SQL Plus.

Alternatively, you can use [Oracle Live SQL](https://livesql.oracle.com/), which will work pretty well.

1. First, run create.sql and insert-tuples.sql to build the database. 
2. Then you can run whatever queries you would like or try out the queries I've written. 
3. Finally, you can drop all the tables and views with delete.sql.

