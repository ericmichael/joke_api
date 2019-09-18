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

#READ ALL
get "/joke" do

end

#READ ONE
get "/joke/:id" do

end

#READ RANDOM
get "/joke/random" do

end

#CREATE
post "/joke" do

end

#UPDATE
patch "/joke" do

end

#DESTROY
delete "/joke" do

end
