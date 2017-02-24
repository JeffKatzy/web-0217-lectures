class Restaurant

  attr_accessor :customers, :reviews
  attr_reader :name

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

  def self.find_by_name(name)
    @@all.find{|x| x.name == name}
  end

  def add_review(review_text, customer_obj)

    restaurant_review = Review.new(review_text)
    restaurant_review.customer = customer_obj
    customer_obj.reviews << restaurant_review
    if !customer_obj.restaurants.include?(self)
      customer_obj.restaurants << self
    end
    
    if !self.customers.include?(customer_obj)
      self.customers << customer_obj
    end
    self.reviews << restaurant_review

  end

  def add_customer(customer_obj)
    customers << customer_obj
  end


end
