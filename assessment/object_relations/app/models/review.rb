class Review
  attr_accessor :content
  attr_reader :customer, :restaurant

  @@all = Set.new

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all.add(self)

    customer.add_review(self)
    restaurant.reviews.add(self)
  end

  def self.all
    @@all
  end

end
