class Review

	@@all = Array.new()

	attr_accessor :name, :customer, :restauraunt

	def initialize(name, customer, restaurant)
		@name = name
		@customer = customer
		customer.add_review(self)
		@restaurant = restaurant
		restaurant.reviews << self
		@@all << self
	end

	def self.all()
		return @@all
	end

	def customer()
		return @customer
	end

	def restauraunt()
		return @restauraunt
	end


end

#Customer has many reviews
#Customer has many restauraunts

#Review belongs to a customer
#Review belongs to a restauraunt

#Restauraunt has many reviews
#Restauraunt has many customers