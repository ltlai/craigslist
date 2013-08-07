# Category.new(title: "Apartments").save
# Category.new(title: "For Sale").save
# Category.new(title: "Personals").save
# Category.new(title: "Jobs").save

# apt = Post.new(title: "Apartment for Rent",
#   description: "Studio with great view!",
#   price: 1200, reply_email: "bob@mail.com",
#   secret_key: "123456789", category_id: 1)
# apt.save

# car = Post.new(title: "Car for Sale",
#   description: "Silver Honda Civic",
#   price: 8000, reply_email: "john@mail.com",
#   secret_key: "987654321", category_id: 2)
# car.save

studio = Post.new(title: "SOMA Studio",
  description: "Live where you work!",
  price: 2500, reply_email: "mike@mail.com",
  secret_key: "qwerty", category_id: 1)
studio.save

sofa = Post.new(title: "Sofa for Sale",
  description: "Red velvet",
  price: 500, reply_email: "adam@mail.com",
  secret_key: "asdfasdf", category_id: 2)
sofa.save