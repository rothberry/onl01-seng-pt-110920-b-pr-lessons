ENV["SINATRA_ENV"] ||= "development"

require "bundler/setup"
Bundler.require(:default, ENV["SINATRA_ENV"])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV["SINATRA_ENV"]}.sqlite",
)

require_all "app"

cols = Rake.application.terminal_width
puts "*" * cols
# puts ENV["SINATRA_ENV"]
# puts "*" * cols
