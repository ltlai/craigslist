require_relative '../app/models/post.rb'

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