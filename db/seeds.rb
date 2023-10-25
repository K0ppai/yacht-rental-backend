# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: 'Koppai', email: "test@gmail.com",password: "password")
yacht = Yacht.create(name: 'Model', description: "this is model 1", model: "12",image: "url",fee_per_day: 12.05)
city = City.create(name: "Yangon")
yacht_city = YachtCity.create(yacht_id: yacht, city_id: city, is_available: true)
yacht_city = YachtCity.create(yacht_id: yacht.id, city_id: city.id, is_available: true)
reservation = Reservation.create(start_date: "2023-11-01", end_date: "2023-11-05", total_value: 100, user_id: user.id, yacht_id: yacht.id, city_id: city.id)
