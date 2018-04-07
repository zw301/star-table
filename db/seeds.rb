# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(email: "guest@mail.com", password: "password", first_name: "Guest", last_name: "Guest", phone_number: "347-464-1688")

10.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
  )
end


Restaurant.destroy_all

Restaurant.create(
  owner_id: 1,
  name: "Masa",
  address: "10 Columbus Cir",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "212-823-9800",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Masayoshi Takayama's appreciation for food started at a young age, growing up working for his family’s fish market in a town of Tochigi Prefecture, Japan. From his early years of delivering fresh sashimi to neighbors on his bicycle, to prepping and grilling hundreds of fish courses to cater weddings in high school, his relationship with food has always been a way of life.",
  logo: "masa_logo.png"
)


10.times do
  Restaurant.create(
    owner_id: [1,2,3,4,5,6,7,8,9,10].sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number,
    open_time: "12:00:00",
    close_time: "22:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end
