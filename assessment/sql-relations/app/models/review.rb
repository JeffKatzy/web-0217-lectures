class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id



  def customer
    sql = <<-SQL
      SELECT * FROM customers
      INNER JOIN customers on customers.id = reviews.customer_id
      WHERE  = customers.id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

  def restaurant
    sql = <<-SQL
      SELECT * FROM restaurants
      INNER JOIN restaurants on restaurants.id = reviews.restaurants_id
      WHERE  = restaurants.id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

end
