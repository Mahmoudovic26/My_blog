# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Find or initialize a user with the specified email
user = User.where(email: "hodaoda83@gmail.com").first_or_initialize

# Update the attributes of the user
user.update(
  password: "password",
  password_confirmation: "password"
)
# Find or initialize a user with the specified email
user = User.where(email: "mahmoudabdo@gmail.com").first_or_initialize

# Update the attributes of the user
user.update(
  password: "password",
  password_confirmation: "password"
)
