# ORMs

## What does ORM stand for?

Object Relational Mapping

## Why do we use ORMs?

Matches the SQL Databases into programs.
It keeps and the code consistent

## SQLite3

a gem that helps us communicate with our sql database

DB = {
  conn: SQLite3::Database.new('db/movies.db')
}

## Heredoc

A heredoc is a way to define a multiline string, while maintaining the original indentation & formatting.

Converting ruby methods to ORM

sql query string
DB[:conn].execute
match our models to new database insert

INSERT INTO movies (title, genre, year)
VALUES (?, ?, ?);
?'s are treated as "bind variable"
Order does matter for binding variables