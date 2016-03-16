# Practicing with Faker, HTTParty, and JSON in Ruby.

The following code has a constructor that accepts a URL from OMDB (imdb API). The constructor should then use httparty.get() to get the data with set instance variables for title, plot, & director.

```rb
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
```


Implement a to_s, to_hash, to_json:
```rb

def to_hash
  return {
    :title   => @title,
    :address => @director,
    :email   => @plot
  }
end

def to_json
  self.to_hash.to_json
end

def to_s
  "The movie is called #{title}, directed by #{director}. The movie plot: #{plot}"
end
```
