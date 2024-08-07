# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
sleep 1
Restaurant.destroy_all

puts 'Creating restaurants...'
sleep 1

restaurants = [
  { name: 'Epicure', address: '75008 Paris', phone_number: '01 42 65 16 77', category: 'french' },
  { name: 'Sushi Samba', address: '110 Bishopsgate, London EC2N 4AY', phone_number: '020 3640 7330', category: 'japanese' },
  { name: 'Pizza East', address: '56 Shoreditch High St, London E1 6JJ', phone_number: '020 7729 1888', category: 'italian' },
  { name: 'Wagamama', address: '1 Bedford Ave, London WC1B 3AU', phone_number: '020 7636 3338', category: 'chinese' },
  { name: 'Le Pain Quotidien', address: '18 Great Marlborough St, London W1F 7FN', phone_number: '020 7440 7330', category: 'belgian' }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

sleep 1
puts 'Finished!'
