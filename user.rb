class User
  require 'faker'
  require 'json'

  def initialize
    @name = Faker::Name.name # faker is a library designed to fake things
    @address = Faker::Address.street_address
    @email = Faker::Internet.email
  end

  def to_hash
    return {
      :name => @name,
      :address => @address,
      :email => @email
    }
    end

  def to_json
    self.to_hash.to_json
  end


  def to_s
    return 'nyi'
  end


end
