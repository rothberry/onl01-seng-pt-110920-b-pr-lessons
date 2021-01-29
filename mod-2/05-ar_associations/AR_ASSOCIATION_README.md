# ActiveRecord

## Deliverables

- The ActiveRecord gem
- Understand rake and the Rakefile
- How to create custom rake tasks
- How to connect ActiveRecord to our SQLite(PostgreSQl, MySQL) database
- The AR logger
- Diff between "models" and "classes"
- AR Migrations
- The schema
- Seeding a database

## ActiveRecord associations

Artists   Albums    Songs

Artist  has many    Albums
Album   belongs to  Artist

Album   has many    Songs
Song    belongs to  Album

Artist  has many    Song  through Albums