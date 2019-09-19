require "sinatra"
require 'data_mapper' # metagem, requires common plugins too.

# need install dm-sqlite-adapter
# if on heroku, use Postgres database
# if not use sqlite3 database I gave you
if ENV['DATABASE_URL']
  DataMapper::setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
else
  DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/app.db")
end

class Joke
	include DataMapper::Resource
	property :id, Serial
	property :text, Text
end

DataMapper.finalize
Joke.auto_upgrade!

#READ ALL
get "/jokes" do
	halt 200, {message: "Hello world"}.to_json
end

#READ ONE
get "/jokes/:id" do

end

#READ ONE RANDOM JOKE
get "/jokes/random" do

end

#CREATE
post "/jokes" do

end

#UPDATE
patch "/jokes/:id" do

end

#DESTROY
delete "/jokes/:id" do

end
