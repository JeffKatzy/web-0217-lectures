class Restaurant

  attr_accessor :name, :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant_name| restaurant_name == name}
  end

  def reviews(cust)
    #@@all.select {|customer| customer == cust}
  end

  def customers(rest)
    #@@all.select {|restaurant| restaurant == rest}
  end

end
