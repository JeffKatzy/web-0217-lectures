# Ok, now we have a totally different website then in object relations section.
# Please don't base your answers on your ruby work.

# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# 1. As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# customers
id | name

# restaurants
id | name | owner_id

# owners (assuming an owner can have multiple restaurants)
id | name

# reviews
id | content | restaurant_id | customer_id

#------------------------------------------------------------------------------------
#we are using reviews as out join table instead of making a new one.
customers < reviews,
          < restaurants though reviews

restaurants < reviews
            < customers through reviews
            - owner

owners < restaurants

reviews - customer
        - restaurant

# 2. As a second step, please fill in the stubbed out methods in the respective model.
# Customer#reviews
# Owner#restaurants
# Restaurant#owner
# Review#customer
# Review#restaurant
