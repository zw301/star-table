# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Reservation.destroy_all
Review.destroy_all

User.create(
  email: "guest@mail.com",
  password: "password",
  first_name: "Guest",
  last_name: ".",
  phone_number: "347-464-1688"
)

User.create(
  email: "zii@mail.com",
  password: "password",
  first_name: "Zii",
  last_name: "Wang",
  phone_number: "347-666-9999"
)

10.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
  )
end

User.create(
  email: "ting@mail.com",
  password: "password",
  first_name: "Ting",
  last_name: "Jiang",
  phone_number: "347-464-9988"
)


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

Restaurant.create(
  owner_id: 2,
  name: "IzzI",
  address: "20 Brooklyn",
  star: "3",
  city: "San Francisco",
  state: "CA",
  zipcode: "94043",
  phone_number: "212-823-9800",
  open_time: "18:00:00",
  close_time: "24:00:00",
  cuisine: "Chinese",
  description: "Hot pot lalala",
  logo: "izzi_logo.png"
)

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "New York",
    state: "NY",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "18:00:00",
    close_time: "24:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "San Francisco",
    state: "CA",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "12:00:00",
    close_time: "20:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Chicago",
    state: "IL",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "10:00:00",
    close_time: "18:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Los Angeles",
    state: "CA",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "16:00:00",
    close_time: "22:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Washington",
    state: "DC",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "12:00:00",
    close_time: "24:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Seattle",
    state: "WA",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "08:00:00",
    close_time: "20:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end


12.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "12:00:00",
    close_time: "20:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end



Reservation.create(
  user_id: 1,
  restaurant_id: 1,
  time: "6",
  date: "2018-04-01",
  seats: 2
)

Reservation.create(
  user_id: 1,
  restaurant_id: 2,
  time: "7",
  date: "2018-04-07",
  seats: 1
)

8.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

8.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (2..8).to_a.sample
  )
end

3.times do
  Reservation.create(
    user_id: (1..11).to_a.sample,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

3.times do
  Reservation.create(
    user_id: (1..11).to_a.sample,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end


Review.create(
  user_id: 1,
  restaurant_id: 1,
  rating: 5,
  comment: "Love this place! I've been going for years and always receive great customer service and the sushi is always delicious. It's great bc it's local and fairly priced, so enjoying sushi doesn't always have to be a splurge."
)

50.times do
  Review.create(
    user_id: (1..11).to_a.sample,
    restaurant_id: (1..12).to_a.sample,
    rating: (1..5).to_a.sample,
    comment:Faker::Lovecraft.paragraph
  )
end
