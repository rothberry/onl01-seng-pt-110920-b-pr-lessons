require 'bundler'
Bundler.require

require_all 'lib'
require_all "db"

DB = {
  conn: SQLite3::Database.new('db/movies.db')
}

DB[:conn].results_as_hash = true