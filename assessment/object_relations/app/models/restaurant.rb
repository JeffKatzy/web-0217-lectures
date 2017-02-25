class Restaurant
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
    @@all.detect {|restaurant| restaurant.name == name}
  end

  def reviews_as_objects
    Review.all.find_all do |review|
      review.restaurant.name == self.name
    end
  end

  def reviews
    self.reviews_as_objects.map do |review|
      review.description
    end
  end

  def customers_as_objects
    self.reviews_as_objects.map do |review|
       review.customer
    end
#     this is good.
  end

  def customers
    self.customers_as_objects.map do |customer|
      customer.name
    end
#     here return the customer object for customers.
  end



end
