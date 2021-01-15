# Intro to SQL

Tools:

- SQLite3           => C-Language library SQL database engine
- SQLite Browser    => Visual User Interface for interacting with sql/sqlite3
- chinook database  => Microsoft curated Open source database
- PostgreSQL(elephant)

Not at Flatiron
- MySQL(2)          => Library that interacts with SQL
Examples of NoSQL:
- MongoDB (non-relational)

## What is SQL?
Structured Query Language

## What is SQL used for?
Database Management
Information Storage
***Information Persists***
Sharing of information
Single source of truth
***Relational Database***

## What kind of operations can we do in SQL?
Create data
Read Data (sort, group, etc..)
Update data
Delete data

C.R.U.D.

## How to make SQL Queries

1. .sql files
2. run sqlite3 terminal
3. run sqlite browser


## SQLite3 tips
to run the default sqlite terminal:
sqlite3

to run the sqlite terminal with a database:
sqlite3 <chinook.db>

to run a sql query on a database:
sqlite3 <chinook.db> < <file.sql>

## Relational Databasing

Foriegn Keys => table ids (keys) from the parent (has many) table on the current

## SQL Queries
PRAGMA table_info(table_name); => show columns

1. Write a SQL Query to select all the rows in the artists table
  ```SQL
    SELECT * FROM artists;
  ```

2. Write a SQL Query to select the artist with the name "Black Sabbath"
  ```SQL
    SELECT * 
    FROM artists
    WHERE name ="Black Sabbath";
  ```

3. Write a SQL Query to create a table named "fans" with an auto-incrementing ID that's a primary key and a name field of type text
+++++++++++++++
name of column, type of data
types: INTEGER, TEXT, VARCHAR, BOOL, FLOAT
Primary key => auto-incrementing
+++++++++++++++
  ```SQL
    CREATE TABLE IF NOT EXISTS fans (
      fanId   INTEGER PRIMARY KEY,
      name    TEXT
    );
  ```

4. Write a SQL Query to alter the fans table to have an artistId column of type integer
  ```SQL
    ALTER TABLE fans
    ADD COLUMN artistId INTEGER;
  ```

5. Write a SQL Query to add yourself as a fan of the Red Hot Chili Peppers ArtistId ***127***
  ```SQL
    UPDATE fans
    SET groupieName = "sockman"
    WHERE groupieName == "flea";

  ```


6. Write a SQL Query to change your "name" in the fans table.
  ```SQL
  ```

7. Write a SQL Query to return all the fans that not fans of the Black Eyed Peas(169)
  ```SQL
  ```

8. Write a SQL Query to display artist name, album name, and number of tracks on that album
  ```SQL
  SELECT artists.name, albums.title 
  FROM ARTISTS
  JOIN albums
    ON albums.ArtistId = artists.ArtistId;
  ```
  
9. Write a SQL Query to return the name of all of the artists in the 'Pop' Genre
  ```SQL
  ```