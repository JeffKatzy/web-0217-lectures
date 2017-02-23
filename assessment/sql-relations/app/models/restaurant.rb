class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def owner
    sql = <<-SQL
      SELECT owner.* FROM owners
      JOIN restaurant ON restaurant.owner_id = id
      WHERE owner.id = ?
    SQL

    self.class.db.execute(sql, self.owner_id)
  end
end