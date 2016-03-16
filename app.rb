require 'bundler'
Bundler.require

require './user' #load the user.rb file

test_user = User.new #instantiate new copy of User
p test_user.to_s
