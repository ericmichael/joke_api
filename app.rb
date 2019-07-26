require "sinatra"
require_relative "api_authentication.rb"
#the following urls are included in authentication.rb
# GET /login
# GET /logout
# GET /sign_up

# authenticate! will make sure that the user is signed in, if they are not they will be redirected to the login page
# if the user is signed in, current_user will refer to the signed in user object.
# if they are not signed in, current_user will be nil


get "/" do
	halt 200, {"message" => "Hello World"}.to_json
end

get "/logged_in_only" do
	api_authenticate!
	halt 200, {"message" => "Hello #{current_user.email}"}.to_json
end

get "/admin" do
	api_authenticate!
	admin_only!
	halt 200, {"message" => "Super Secret Admin Stuff"}.to_json
end

get "/joke" do

end

post "/joke" do

end

patch "/joke" do

end

delete "/joke" do

end
