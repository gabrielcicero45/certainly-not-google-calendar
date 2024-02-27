# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
(DateTime.new(2024,1,1,0,0,0,"-0300")..DateTime.new(2024,3,4,0,0,0,"-0300")).each do |date|
  puts date + 8.hours
  Task.create!(
    name: date.strftime("%B %d, %Y Morning"),
    description: "This is a morning task!",
    start_date: date + 8.hours,
    end_date: date + 12.hours
  )
  Task.create!(
    name: date.strftime("%B %d, %Y Afternoon"),
    description: "This is an afternoon task!",
    start_date: date + 14.hours,
    end_date: date + 18.hours
  )
end