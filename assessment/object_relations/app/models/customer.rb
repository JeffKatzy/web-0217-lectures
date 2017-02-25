#if either restaurants or reviews could be deleted, I would likely change this

class Customer
  attr_accessor :name
  attr_reader :restaurants, :reviews

  @@all = Set.new

  def initialize(name)
    @name = name
    @restaurants = Set.new
    @reviews = Set.new
    @@all.add(self)
  end

  def self.find_by_name(name)
#     Would prefer we just use the find method here.
    @@all.each do |customer|
      return customer if customer.name == name
    end
  end

  def self.all
    @@all
  end

  #do we really want the possibility to create a new restaurant here?
  #think it would make more sense to control that when the form is being processed
  #because the user would either select existing or make new.
  def add_review(review, restaurant)
#     use the method instead of the instance variable.
    @reviews.add(review)
#     probably would pass through a restaurant to the method, because otherwise can call method without a restaurant.
#     are you passing through a restaurant here, if so review, wouldn't have a restaurant at this time, so restaurant would be nil.
    add_restaurant(review.restaurant)
    review.restaurant.add_customer_review(self, review)
  end

  private
  def add_restaurant(restaurant)
    @restaurants.add(restaurant)
  end

end
