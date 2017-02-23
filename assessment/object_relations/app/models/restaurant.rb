class Restaurant
  attr_reader :name, :reviews, :customers

  @@all = Set.new

  def initialize(name, other_params)
    @name = name
    @reviews = Set.new
    @customers = Set.new
    @@all.add(self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each do |restaurant|
      return restaurant if restaurant.name == name
    end
  end

  def add_customer_review(customer, review)
    @reviews.add(review)
    @customers.add(customer)
  end

end
