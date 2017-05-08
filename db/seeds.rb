
User.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
  User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

100.times do
  Post.create!(title: Faker::Hipster.sentence, user_id: User.all.sample.id)
end

100.times do
  Comment.create!(user_id: User.all.sample.id, post_id: Post.all.sample.id, body: Faker::Hipster.sentence)
end
