# Styleguide

A styleguide generator for your rails 3 app 


This gem add a generator to your app, to generate a controller, view, css, and route for your app

The view contains all the common html tags, and it will take all the styles that you have coded, now you 
can see the look of each tag.

## Installation

Include it on your Gemfile

    gem 'styleguide'

And install it

    bundle install

thats all.


## Usage

Once its installed you'll have a new Rails generator *rails generate styleguide:controller*

for example if you want a styleguide with the name mystyleguide just:

    rails generate styleguide:controller mystyleguide

this will generate

    create  app/controllers/mystyleguides_controller.rb
    create  app/views/mystyleguides/show.html.haml
    create  public/stylesheets/mystyleguides.css
    route  resource :mystyleguide, :only => :show

And you can access to your styleguide

     http://localhost:3000/mystyleguide

## TODO

* add rspec for routes
* add blueprints and compass support
* create a fork for sinatra

# About the Author

[Crowd Interactive](http://www.crowdint.com) is an American web design and development company that happens to work in Colima, Mexico. 
We specialize in building and growing online retail stores. We don’t work with everyone, just companies we believe in. Call us today to see if there’s a fit.
Find more info [here](http://www.crowdint.com)!
