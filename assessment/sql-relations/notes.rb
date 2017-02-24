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

# customers
All the ids on the left hand side are PKs (Primary Keys)
FK means Foreign Key

id |name| 
Customers has many Reviews

# restaurants 
id | name | owner_id (FK)
Restaurants has many Reviews
Restaurants has many Customers through Reviews
Restaurants belongs to an Owner

# owners
id | name
Owners has many Restaurants


# reviews (the join table for restaurants and reviews)
id | name | restaurant_id (FK) | customer_id (FK)
Review belongs to a Restaurant
Review belongs to a Customer

# 2. As a second step, please fill in the stubbed out methods in the respective model.
# Customer#reviews
# Owner#restaurants
# Restaurant#owner
# Review#customer
# Review#restaurant

Nice work.
