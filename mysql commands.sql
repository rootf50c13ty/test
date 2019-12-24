 mysql -u root -p // connecting to DB
 
 mysql> QUIT // Quit mysql
 
 SHOW DATABASES; // to show databases
 
 mysql> CREATE DATABASE pets; // create db
 
 mysql> SHOW DATABASES; // to show databases. 
 
 USE <db_name> 			//  default database for subsequent statements.
 
 CREATE TABLE cats
(
  id              INT unsigned NOT NULL AUTO_INCREMENT, # Unique ID for the record
  name            VARCHAR(150) NOT NULL,                # Name of the cat
  owner           VARCHAR(150) NOT NULL,                # Owner of the cat
  birth           DATE NOT NULL,                        # Birthday of the cat
  PRIMARY KEY     (id)                                  # Make the id the primary key
);																						// Creating a table

SHOW TABLES;		// 
 
DESCRIBE cats;		// describe table info

INSERT INTO cats ( name, owner, birth) VALUES
  ( 'Sandy', 'Lennon', '2015-01-03' ),
  ( 'Cookie', 'Casey', '2013-11-13' ),
  ( 'Charlie', 'River', '2016-05-21' );				// insert into tables
  
SELECT * FROM cats;			// Retrieving records from a table.  Use a SELECT statement, and “*” to match all columns:

SELECT name FROM cats WHERE owner = 'Casey'; // To select specific columns and rows by a certain condition using the WHERE clause:

DELETE FROM cats WHERE name='Cookie'; // Deleting a record from a table.  Use a DELETE statement to delete a record from a table, specifying the criterion for deletion with the WHERE clause:

ALTER TABLE cats ADD gender CHAR(1) AFTER name; //  Use an ALTER TABLE...ADD statement to add a column. You can use, for example, an AFTER clause to specify the location of the new column:

DESCRIBE cats;

ALTER TABLE cats DROP gender;


























