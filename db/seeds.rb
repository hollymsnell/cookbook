# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


recipes = Recipe.create!([
{name: "Tomato Cucumber Salad", ingredients: "One english cucumber, 16oz tomato, shallot, feta cheese, garbanzo beans, lemon juice, dill, salt", instructions: "cut tomatoes, shallot, and cucumber and add everything together", prep_minutes: 20, cook_minutes: 0},
{name: "White Bean Chili", ingredients: "white beans, turkey/chicken, green chili, broth", instructions: "add it all together and cook in crockpot", prep_minutes: 15, cook_minutes: 45},
{name: "Nice Cream", ingredients: "bananas", instructions: "put frozen bananas through blender and blend until creamy", prep_minutes: 5, cook_minutes: 0}
])