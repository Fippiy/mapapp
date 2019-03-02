# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create first sample user
User.create(
  username: "t",
  email: "test@test.com",
  password: "111111"
)

#create user sample
20.times do
  User.create(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
1.upto(20) do |index|
  Route.create(
    user_id: index,
    title: Faker::Coffee.blend_name,
    description: Faker::Coffee.notes,
    route_photos_attributes: [
      {
        photo: Faker::Avatar.image,
        route_id: index
      }
    ]
  )
end
