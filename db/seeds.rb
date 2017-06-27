# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

city = City.create name: 'city'
city1 = City.create name: 'city1'
city2 = City.create name: 'city2'
city3 = City.create name: 'city3'
county = County.create name: 'county'
county1 = County.create name: 'county1'
county.cities<<city<<city1
county1.cities<<city2<<city3
state = State.create name: 'Califonia'
state.counties<<county<<county1
