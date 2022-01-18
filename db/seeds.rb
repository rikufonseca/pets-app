# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all

puts "start seedings.."

pet1 = Pet.create!(name:"Leo", species:"Cat");

pet2 = Pet.create!(name:"Pantoufle", species:"Dog");

puts "seeds done, pets created..."