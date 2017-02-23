
#My Answer:

#owner - "has many restaurants"

id | name

#restuarants - "belongs to restaurant, has many customers, has many reviews through customers"

id | name | location | owner_id

#customers - "has many reviews, has many restaurants"

id | name | birth_year | hometown


#reviews - "belongs to customer"

id | content | customer_id | restaurant_id



# 2. As a second step, please fill in the stubbed out methods in the respective model.
# Customer#reviews DONE
# Owner#restaurants  - DONE
# Restaurant#owner  - DONE
# Review#customer - DONE
# Review#restaurant - DONE
