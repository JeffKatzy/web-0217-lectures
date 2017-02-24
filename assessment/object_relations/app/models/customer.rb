class Customer
  attr_accessor :restaurants, :reviews
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @restaurants = []
    @reviews = []
    @@all << self
  end


  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|x| x.name == name}
  end

  def reviews
    @reviews
  end

  def restaurants
    @restaurants
  end

  def add_review(review_text, restaurant_obj)

    customer_review = Review.new(review_text)
    customer_review.restaurant = restaurant_obj
    restaurant_obj.reviews << customer_review
    if !restaurant_obj.customers.include?(self)
      restaurant_obj.customers << self
    end
    if !self.restaurants.include?(restaurant_obj)
      self.restaurants << restaurant_obj
    end
    self.reviews << customer_review

  end

end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
