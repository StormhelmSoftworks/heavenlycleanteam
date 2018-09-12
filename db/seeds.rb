# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Partial Services

Service.create!(name: "Bedroom", display_name: "Bedroom", rate: 30, qty: 0, category: "Partial")
Service.create!(name: "Bathroom", display_name: "Bathroom", rate: 30, qty: 0, category: "Partial")
Service.create!(name: "Closet", display_name: "Closet", rate: 15, qty: 0, category: "Partial")

Service.create!(name: "Living", display_name: "Living Room", rate: 40, qty: 1, category: "Partial")
Service.create!(name: "Dining", display_name: "Dining Room", rate: 40, qty: 1, category: "Partial")
Service.create!(name: "Kitchen", display_name: "Kitchen", rate: 40, qty: 1, category: "Partial")

# Package Services

Service.create!(name: "Deep", display_name: "Deep Clean", rate: 190, qty: 1, category: "Package")
Service.create!(name: "Moving", display_name: "Move In/Out Clean", rate: 140, qty: 1, category: "Package")

# Exterior Services

Service.create!(name: "Washing", display_name: "Power Washing", rate: 50, qty: 1, category: "Exterior")
Service.create!(name: "Mosquito", display_name: "Mosquito Control", rate: 80, qty: 1, category: "Exterior")

# Other Services

Service.create!(name: "Furniture", display_name: "Furniture Removal", rate: 60, qty: 1, category: "Other")
Service.create!(name: "Junk", display_name: "Junk Removal", rate: 60, qty: 1, category: "Other")
