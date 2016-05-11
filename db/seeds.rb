# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Company.duns_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  restaurant.save
end


5.times do
  review = Review.new(
    rating: [0,1,2,3,4,5].sample,
    content: Faker::Lorem.sentence,
    restaurant_id: [1,2,3,4,5].sample
    )
  review.save
end
