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
  def add_review(review)
    @reviews.add(review)
    add_restaurant(review.restaurant)
    review.restaurant.add_customer_review(self, review)
  end

  private
  def add_restaurant(restaurant)
    @restaurants.add(restaurant)
  end

end
