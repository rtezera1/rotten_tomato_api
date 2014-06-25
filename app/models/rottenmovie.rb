class RottenMovie < ActiveRecord::Base
  def initialize
    Rotten.api_key = ENV['TOMATO_TOKEN']
  end
end

