# have a constructor that accepts a URL OMDB
# the constructor should then use httparty.get to get the data
# You will then set instance variables for @title, @director, @plot
# Implement a to_s, to_hash, to_json
# self.method_name == this.methodName() in JS

class Movie
  require 'faker'
  require 'json'
  require 'httparty'

attr_accessor :title, :director, :plot
def initialize(url)
  response  = HTTParty.get(url)
  @title    = response["Title"]
  @director = response["Director"]
  @plot     = response["Plot"]
end

def to_hash
  return {
    :title => @title,
    :address => @director,
    :email => @plot
  }
end

def to_json
  self.to_hash.to_json
end

def to_s
  "The movie is called #{title}, directed by #{director}. The movie plot: #{plot}"
end

end

movie1 = Movie.new("http://www.omdbapi.com/?t=taxi+driver&y=&plot=short&r=json")
