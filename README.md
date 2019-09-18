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
## Implement CRUD RESTFUL API for jokes

See comments for additional details.


## Deploying to Heroku

### Deployment Instructions

1. Add all your changes on git and make a commit
2. Create a Heroku server: `heroku create`
3. Create a database for your server: `heroku addons:create heroku-postgresql:hobby-dev`
4. Push the code to Heroku: `git push heroku master`
5. I preconfigured the necessary files for this to work.
6. Get checked off by me