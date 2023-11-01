# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.last
Yacht.create(name: 'Model1', description: 'this is model 1', model: '01', image: 'https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fee_per_day: 12.05)
Yacht.create(name: 'Model2', description: 'this is model 2', model: '02', image: 'https://images.unsplash.com/photo-1528154291023-a6525fabe5b4?auto=format&fit=crop&q=80&w=1964&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fee_per_day: 21.05)
Yacht.create(name: 'Model3', description: 'this is model 3', model: '03', image: 'https://images.unsplash.com/photo-1605281317010-fe5ffe798166?auto=format&fit=crop&q=80&w=2044&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fee_per_day: 34.05)
Yacht.create(name: 'Model4', description: 'this is model 4', model: '04', image: 'https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?auto=format&fit=crop&q=80&w=2074&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fee_per_day: 43.05)
Yacht.create(name: 'Model5', description: 'this is model 5', model: '05', image: 'https://images.unsplash.com/photo-1535024966840-e7424dc2635b?auto=format&fit=crop&q=80&w=1886&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fee_per_day: 51.05)

City.create(name: 'Yangon')
City.create(name: 'Mandaly')
City.create(name: 'Mawlamyine')
City.create(name: 'New York')
City.create(name: 'Japan')
City.create(name: 'Singapore')
City.create(name: 'Konoha')
City.create(name: 'Akatsuki')
City.create(name: 'Leaf Village')
City.create(name: 'Sand Village')
# YachtCity.create(yacht_id: yacht.id, city_id: city.id, is_available: true)
# Reservation.create(start_date: '2023-11-01', end_date: '2023-11-05', total_value: 100, user_id: user.id, yacht_id: yacht.id, city_id: city.id)
