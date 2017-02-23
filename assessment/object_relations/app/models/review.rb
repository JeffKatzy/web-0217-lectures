class Review

    attr_accessor :restaurant, :customer

    @@all = []

    def initialize(text)
      @text = text

      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_by_name(name)
      @@all.find{|x| x.name == name}
    end
    #
    # def customers
    #   @customers
    # end
    #
    # def restaurants
    #   @restaurants
    # end

    def add_customer(customer_obj)
      self.customer = customer_obj
    end

    def add_restaurant(restaurant_obj)
      self.restaurant = restaurant_obj
    end

  end

  # Customer.new('bob')
    # <>
  # customer = customer.add_review('it was good', Restaurant.new)
    # result: a new review tied ot the restaurant, and tied to the customer
