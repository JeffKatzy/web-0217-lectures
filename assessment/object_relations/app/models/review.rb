class Review

  attr_accessor :customer, :review, :restaurant

  @@reviews = []

  def initialize(review, restaurant)
    @review = review
    restaurant = Restaurant.new(restaurant)
    @restaurant = restaurant.name
    @@reviews << self
  end

  def self.all
    @@reviews
  end

  def customer(cust)
  #  @@reviews.find {|customer| customer == cust}
  end

  def restaurant(rest)
    #@@reviews.find {|restaurant| restaurant == rest}
  end
end
