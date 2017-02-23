class Review
  ALL = []
attr_reader :phrase, :restaurant

  def initialize(phrase)
  	@phrase = phrase
  	ALL << self
  end

  def self.all
  	ALL
  end

  def customer
  	Customer.all.find{|customer| customer.reviews.include?(self)}
  end

  def restaurant
  	Restaurant.all.find{|restaurant| restaurant.reviews.include?(self)}
  end
end

