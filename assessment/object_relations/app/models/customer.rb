class Customer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @restaurants = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    @@all.find {|customer| customer.name == search_name}
  end

  def add_review(review, restaurant)
    self.reviews << review
    new_review = Review.new(review)
    new_review.customer = self
    self.restaurants << restaurant
    new_restaurant = Restaurant.new(restaurant)
    new_restaurant.customers << self
  end

  def add_restaurant(restaurant)
    self.restaurants << restaurant
    new_restaurant = Restaurant.new(restaurant)
    new_restaurant.customers << self
  end

  def reviews(review)
    @reviews
  end

  def restaurants
    @restaurants
  end

end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
