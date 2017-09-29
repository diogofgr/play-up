# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.destroy_all

this_user = User.first

descriptions = ['jump 1000 times!',
                'run 50k',
                'eat 20 apples',
                'ice bucket challenge with a bathtub',
                'take a selfie with Marcelo',
                'find an original song from Toni Carreira']

for description in descriptions
  chal = Challenge.new( description: description)
  chal.author = this_user
  chal.save
end

