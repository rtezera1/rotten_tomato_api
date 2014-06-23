# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
RottenTomatoApi::Application.initialize!

Rotten.api_key=ENV['TOMATO_TOKEN']
