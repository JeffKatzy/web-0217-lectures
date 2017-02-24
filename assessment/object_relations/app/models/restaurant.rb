class Restaurant

	ALL = []
	attr_reader :name, :reviews, :customers



	def initialize(name)
		@name = name
		@reviews = []
		@customers
		ALL << self
	end

	def self.all
		ALL
	end

	def self.find_by_name(name)
		self.find {|rest| rest.name == name}
	end

	def reviews
# 		@reviews << Review.all.find {|review| review.restaurant.name == self.name}
		@reviews = Review.all.select {|review| review.restaurant == self}
	end

	def customers
		@customers << Customer.all.find {|customer| customer.reviews.restaurant.name == self.name}
		
	end


end
