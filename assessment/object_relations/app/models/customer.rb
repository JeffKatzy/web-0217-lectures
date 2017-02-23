class Customer

	@@all = Array.new()

	attr_accessor :name, :reviews, :restaurants
	def initialize(name)
		@name = name
		@reviews = Array.new()
		@restaurants = Array.new()
		@@all << self
	end

	def self.all()
		return @@all
	end

	def self.find_by_name(name)
		return self.all.detect { |customer| customer.name == name }
	end

	def add_review(review)
		@reviews << review
	end

	def add_restaurant(restaurant)
		@restaurants << restaurant
		restaurant.customers << self
	end
end

#Customer has many reviews
#Customer has many restauraunts

#Review belongs to a customer
#Review belongs to a restauraunt

#Restauraunt has many reviews
#Restauraunt has many customers

# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
