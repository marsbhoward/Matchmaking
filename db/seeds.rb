# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Publisher.create(name: 'Ubisoft',publisher_id: 1, slug: 'Ubisoft'.parameterize)
Publisher.create(name: 'Bandai Namco',publisher_id: 2, slug: 'Bandai Namco'.parameterize)
Publisher.create(name: 'Electronic Arts',publisher_id: 3, slug: 'Electronic Arts'.parameterize)
Publisher.create(name: 'Microsoft Studios',publisher_id: 4, slug: 'Microsoft Studios'.parameterize)
Publisher.create(name: 'Warner Bros. Interactive Entertainment',publisher_id: 5, slug:'Warner Bros. Interactive Entertainment'.parameterize)
Publisher.create(name: 'Activision-Blizzard', publisher_id: 6, slug: 'Activision-Blizzard'.parameterize)






Publisher.first.games.create(name:"Far Cry 5", publisher_name: Publisher.first.name, year: 2018, slug: "Far Cry 5".parameterize)
Publisher.first.games.create(name:"Tom Clancy's The Division 2", publisher_name: Publisher.first.name, year: 2019, slug: "Tom Clancy's The Division 2".parameterize)

Publisher.find_by(publisher_id: 2).games.create(name:"Tekken 7", publisher_name: Publisher.find_by(publisher_id: 2).name, year: 2017, slug: "Tekken 7".parameterize)
Publisher.find_by(publisher_id: 2).games.create(name:"Duelyst", publisher_name: Publisher.find_by(publisher_id: 2).name, year: 2016, slug: "Duelyst".parameterize)

Publisher.find_by(publisher_id: 4).games.create(name:"Sea of Thieves", publisher_name: Publisher.find_by(publisher_id: 4).name, year: 2018, slug: "Sea of Thieves".parameterize)
Publisher.find_by(publisher_id: 4).games.create(name:"Crackdown 3", publisher_name: Publisher.find_by(publisher_id: 4).name, year: 2019, slug: "Crackdown 3".parameterize)
Publisher.find_by(publisher_id: 4).games.create(name:"PlayerUnknown's Battlegrounds", publisher_name: Publisher.find_by(publisher_id: 4).name, year: 2017, slug: "PlayerUnknown's Battlegrounds".parameterize)

Publisher.find_by(publisher_id: 3).games.create(name:"Anthem", publisher_name: Publisher.find_by(publisher_id: 3).name, year: 2019, slug: "Anthem".parameterize)
Publisher.find_by(publisher_id: 3).games.create(name:"Battlefield V", publisher_name: Publisher.find_by(publisher_id: 3).name, year: 2018, slug: "Battlefield V".parameterize)

Publisher.find_by(publisher_id: 5).games.create(name:"Mortal Kombat 11", publisher_name: Publisher.find_by(publisher_id: 5).name, year: 2019, slug: "Mortal Kombat 11".parameterize)
Publisher.find_by(publisher_id: 5).games.create(name: "Injustice 2", publisher_name: Publisher.find_by(publisher_id: 5).name,year: 2017, slug:"Injustice 2".parameterize)

Publisher.find_by(publisher_id: 6).games.create(name: "World of Warcraft", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "World of Warcraft".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"StarCraft 2", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "StarCraft 2".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"Overwatch", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "Overwatch".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"World of Warcraft", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "World of Warcraft".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"StarCraft 2", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "StarCraft 2".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"Overwatch", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "Overwatch".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"Destiny", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "Destiny".parameterize)
Publisher.find_by(publisher_id: 6).games.create(name:"Call of Duty: Black Ops 4", publisher_name: Publisher.find_by(publisher_id: 6).name, year: 2015, slug: "Call of Duty: Black Ops 4".parameterize)

