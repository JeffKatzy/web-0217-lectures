class Review
  @@all = []
  attr_accessor :description, :customer, :restaurant

  def initialize(description, customer, restaurant)
#     this is very good i would just break this up into smaller methods, like perhaps the customer= method.
    
    
    @description = description

    restaurant_object = nil
    if Restaurant.find_by_name(restaurant) == nil
      restaurant_object = Restaurant.new(restaurant)
    else
      restaurant_object = Restaurant.find_by_name(restaurant)
    end
    @restaurant = restaurant_object
    @@all << self
  end

  def self.all
    @@all
  end
  
  def customer=(customer)
#     fill in teh code here.
  end

end
