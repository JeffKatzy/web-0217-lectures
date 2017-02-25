class Customer
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.detect {|customer| customer.name == name}
  end

  def add_review(description, restaurant)
#     here, want to pass through the customer itself.
    new_review = Review.new(description, self.name, restaurant)
    new_review
  end
end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
