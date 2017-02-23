# Ok, now we have a totally different website then in object relations section.
# Please don't base your answers on your ruby work.

# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# 1. As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table

# Write your answer here.
Customer
has_many :reviews,
has_many :restaurants, through: :reviews
id | name |

Owner
id | name |
belongs_to :restaurants
has_many :reviews, through: :restaurants
has_many :customers, through: :reviews

# has_many :reviews, through: :restaurants
# has_many :

Restaurant
belongs_to :owner
has_many :reviews
has_many :customers, through: :reviews

id | name | owner_id |

Review
belongs_to :customer
belongs_to :restaurant
belongs_to :owner, through: :restaurant
id | review | customer_id | restaurant_id

# 2. As a second step, please fill in the stubbed out methods in the respective model.
Customer#reviews
sql = <<-SQL
  SELECT * FROM reviews
  INNER JOIN customers ON reviews.customer_id = customer.id
  WHERE reviews.customer_id = ?
  SQL
Owner#restaurants
<<-SQL
  SELECT * FROM restaurants
  INNER JOIN owner ON owner.id = restaurants.owner_id
  WHERE owner.id = ?
  SQL
Restaurant#owner
<<-SQL
  SELECT * FROM owners
  INNER JOIN restaurant ON owner.id = restaurants.owner_id
  WHERE owner.id = ?
  SQL
Review#customer
<<-SQL
  SELECT * FROM customers
  INNER JOIN reviews ON customer.id = reviews.customer_id
  WHERE review.id = ?
  SQL
Review#restaurant
<<-SQL
  SELECT * FROM restaurants
  INNER JOIN reviews ON restaurant.id = review.restaurant_id
  WHERE review.id = ?
  SQL
