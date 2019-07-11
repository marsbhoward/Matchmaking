# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Publisher.create(name: 'Insomniac Games',publisher_id: 1, slug: 'Insomniac Games'.parameterize)
Publisher.create(name: 'Bandai Namco',publisher_id: 2, slug: 'Bandai Namco'.parameterize)
Publisher.create(name: 'Sony Interactive',publisher_id: 3, slug: 'Sony Interactive'.parameterize)
Publisher.create(name: 'Microsoft Studios',publisher_id: 4, slug: 'Microsoft Studios'.parameterize)







Publisher.first.games.create(name:"Marvel’s Spider-Man", publisher_name: "Insomniac Games", year: 2018, slug: "Marvel’s Spider-Man".parameterize)