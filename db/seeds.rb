# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Publisher.create(name: 'Insomniac Games',publisher_id: 1, slug: 'Insomniac Games'.parameterize)
Publisher.create(name: 'Bandai Namco',publisher_id: 2, slug: 'Bandai Namco'.parameterize)
Publisher.create(name: 'Electronic Arts',publisher_id: 3, slug: 'Electronic Arts'.parameterize)
Publisher.create(name: 'Microsoft Studios',publisher_id: 4, slug: 'Microsoft Studios'.parameterize)







Publisher.first.games.create(name:"Marvel’s Spider-Man", publisher_name: Publisher.first.name, year: 2018, slug: "Marvel’s Spider-Man".parameterize)
Publisher.first.games.create(name:"Ratchet & Clank", publisher_name: Publisher.first.name, year: 2016, slug: "Ratchet & Clank".parameterize)

Publisher.find_by(publisher_id: 2).games.create(name:"Tekken 7", publisher_name: Publisher.find_by(publisher_id: 2).name, year: 2017, slug: "Tekken 7".parameterize)

Publisher.find_by(publisher_id: 4).games.create(name:"Sea of Thieves", publisher_name: Publisher.find_by(publisher_id: 4).name, year: 2018, slug: "Sea of Thieves".parameterize)

Publisher.find_by(publisher_id: 3).games.create(name:"Anthem", publisher_name: Publisher.find_by(publisher_id: 3).name, year: 2019, slug: "Anthem".parameterize)
Publisher.find_by(publisher_id: 3).games.create(name:"Battlefield V", publisher_name: Publisher.find_by(publisher_id: 3).name, year: 2018, slug: "Battlefield V".parameterize)

