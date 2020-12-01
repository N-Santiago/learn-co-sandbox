#environment file 
#load files needed to run this app 

require "breweries/version"
require "breweries/cli"
require "breweries/api"
require "breweries/hoppycode"

#dependencies
require "pry"
require "httparty" 

module Breweries
  class Error < StandardError; end
  # Your code goes here...
end 
