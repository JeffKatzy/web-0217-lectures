class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @customers = []
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    @@all.find {|restaurant| restaurant.name == search_name}
  end

  def reviews
    @reviews
  end

  def customers
    @customers
  end

  def add_review(review)
    self.reviews << review
    new_review = Review.new(review)
    new_review.restaurant = self
  end

  def add_customer(customer)
    self.customers << customer
    new_customer = Customer.new(customer)
    new_customer.restaurants << self
  end


end
