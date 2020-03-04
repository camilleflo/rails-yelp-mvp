# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant .destroy_all
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le Koï',
    adress:      'Rue des cordeliers Aix en Provence',
    category:     'Japanese'
  },
  {
    name:         'Pizza Capri',
    adress:      'Cours Mirabeau Aix en Provence',
    category:     'Italian'
   
  },
   {
    name:         'Le croquant',
    adress:      'Rue de la verrie Aix en Provence',
    category:     'French'
  },
   {
    name:         'La friterie',
    adress:      'Place de la mairie Aix en Provence',
    category:     'Belgium'
  },
   {
    name:         'Sushi day',
    adress:      'Rue des tanneurs Aix en Provence',
    category:     'Chinese'
  },
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'