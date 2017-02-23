class Review
  attr_accessor :content

  @@all = []

  def initialize(content)
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    if self.customer
      self.customer.name
    else
      nil
    end
  end

  def restaurant
    if self.restaurant
      self.restaurant.name
    else
      nil
    end
  end 

end
