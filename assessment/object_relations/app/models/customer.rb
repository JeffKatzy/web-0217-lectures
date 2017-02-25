class Customer

  attr_accessor :name, :review, :restaurant

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
#     here, each is a customer object, so its customer.name == name, and not self.name
    self.all.find{ |customer_name| customer_name == self.name}
  end

  def add_review(review, restaurant)
    # create new instance of a review with
    new_review =  Review.new(review, restaurant)
#     here want to pass through the object itself for self.review = , and not just the string.
    self.review = new_review.review
    self.restaurant = new_review.restaurant
  end




end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
