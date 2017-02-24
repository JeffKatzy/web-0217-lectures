class Restaurant

	@@all = Array.new()

	attr_accessor :name, :reviews, :customers

	def initialize(name, reviews=[], customers=[])
# 		good use of default arguments here.
		@name = name
		@reviews = reviews
		@customers = customers
		@@all << self
	end

	def self.all()
		return @@all
	end

	def self.find_by_name(name)
		return self.all.detect { |restauraunt| restauraunt.name == name }
	end

	def reviews()
		return @reviews
	end

	def customers()
		return @customers.select { |customer| customer unless customer.reviews.empty? }
	end
  
end

#Customer has many reviews
#Customer has many restauraunts

#Review belongs to a customer
#Review belongs to a restauraunt

#Restauraunt has many reviews
#Restauraunt has many customers
