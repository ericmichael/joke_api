# Best Jokes

## Prerequisites

1. Install Ruby via [RailsInstaller](http://railsinstaller.org/en) *(install latest version)*

2. ```
   bundle install --without production
   ```
   ​
## Running the Application
1. Install the rerun gem: `gem install rerun`

2. ```
   rerun 'bundle exec ruby app.rb'
   ```
   ​

## What is in the box

1. Authentication System: "/api/login", "/api/logout", "/api/register"

2. User model



## Protecting routes from non-signed in users

### api_authenticate!

I have created a helper method `api_authenticate!` which, when called, will return an error if they did not pass proper credentials with their request.

For example:

```ruby
get "/jokes" do 
  api_authenticate!
  halt 200, {'joke'=>'knock knock'}.to_json
end
```



### Who is Signed in?

To get information about the current signed in user, use the `current_user` method which returns the user object of the current signed in user or `nil` if no one is signed in.

In code:

```ruby
get '/say_hello' do
	if current_user
      halt 200, {"message"=>"Hello #{current_user.email}!" }.to_json
    else
      halt 200, {"message"=>"Hello World" }.to_json
    end
end
```



## Deploying to Heroku

### Deployment Instructions

1. Add all your changes on git and make a commit
2. Create a Heroku server: `heroku create`
3. Create a database for your server: `heroku addons:create heroku-postgresql:hobby-dev`
4. Push the code to Heroku: `git push heroku master`
5. I preconfigured the necessary files for this to work.
6. Verify all is working and submit your links (github and heroku) to me.