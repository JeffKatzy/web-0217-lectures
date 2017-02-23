require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


rest = Restaurant.new("Joes")
cust = Customer.new("bob")
review = Review.new("test review", cust, rest)

Pry.start

