require 'data_mapper' # metagem, requires common plugins too.

# need install dm-sqlite-adapter
# if on heroku, use Postgres database
# if not use sqlite3 database I gave you
if ENV['DATABASE_URL']
  DataMapper::setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
else
  DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/app.db")
end

class User
    include DataMapper::Resource
    property :id, Serial
    property :email, String
    property :password, String
    property :created_at, DateTime
    property :admin, Boolean, default: false

    def login(password)
    	return self.password == password
    end
end

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the post table
User.auto_upgrade!

if User.all.count == 0
  u = User.new
  u.email = "admin@admin.com"
  u.password = "admin"
  u.admin = true
  u.save
end

def admin_only!
  if current_user
    if !current_user.admin
      halt 401, {"message": "Admin only!"}.to_json
    end
  else
    halt 401, {"message": "Admin only!"}.to_json
  end
end