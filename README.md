# Best Jokes

## Prerequisites

1. Install Ruby via [RailsInstaller](http://railsinstaller.org/en) *(install latest version)*

2. ```
   bundle install --without production
   ```
   ​
## Running the Application
1. ```
   bundle exec ruby app.rb
   ```
   ​
## Implement CRUD RESTFUL API for jokes

See comments for additional details.

## Saving your changes to Git & Github
1. `git add .`
2. `git commit -m "some type of message"`
3. `git push`


## Deploying to Heroku

### Heroku Server Setup (Run only once)

1. Add all your changes on git and make a commit
2. Create a Heroku server: `heroku create`
3. Create a database for your server: `heroku addons:create heroku-postgresql:hobby-dev`

### Deploying your git repo to Heroku

1. Push the code to Heroku: `git push heroku master`
2. I preconfigured the necessary files for this to work.
3. Get checked off by me