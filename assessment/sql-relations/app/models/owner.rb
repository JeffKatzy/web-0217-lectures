class Owner
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def restaurants
    sql = <<-SQL
      SELECT * FROM restaurants
      INNER JOIN restaurants on owners.id = restaurants.owner_id
      WHERE restaurants.owner_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end
