require "bundler/setup"
Bundler.require

# The actual active record connection to the database
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/test.sqlite",
)

# Shows SQLite queries to user
ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all "app"
