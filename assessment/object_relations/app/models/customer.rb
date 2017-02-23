class Customer
	ALL = []
	attr_reader :name, :reviews

	def initialize(name)
		@name = name
		@reviews = []

		ALL << self
	end

	def self.all
		ALL
	end

	def self.find_by_name(name)
		ALL.find {|person| person.name == name}
	end

	def add_review(phrase)
		@reviews << Review.new(phrase)

	end



end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
