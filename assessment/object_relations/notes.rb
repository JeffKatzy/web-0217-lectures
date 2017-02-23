# We want to add the following methods to each of the classes
# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant


# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# Build the following methods on the customer class
  ## Customer.all
  ## Customer.find_by_name(name)
  ## Customer#add_review

  ## Review.all
  ## Review#customer
  ## Review#restaurant

  ## Restaurant.all
  ## Restaurant.find_by_name(name)
  ## Restaurant#reviews
  ## Restaurant#customers
    ## should return all of the customers who have written reviews.

    a Restaurant has many reviews and customer through reviews
    a Review belongs to a customer and a Restaurant
    a Customer has many reviews and resturants through reviews
