# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Character.destroy_all
User.destroy_all
p "DB clean"

require "open-uri"

user = User.create(email: "admin@admin.com", password: "123456")

file_five = URI.open('https://media.vogue.mx/photos/5eb1adab5adaf1625f92effc/2:3/w_1920,c_limit/retrato-de-la-pintora-frida-kahlo.jpg')
character_five = Character.new(name: "Frida Khalo", user: user, title: "International Recognition of the Artist", description: "following her divorce and then reconciliation with Rivera. She painted more 'than she had done in all her eight previous years of marriage', creating such works as My Nurse and I (1937), Memory, the Heart (1937), Four Inhabitants of Mexico (1938), and What the Water Gave Me (1938).Although she was still unsure about her work, the National Autonomous University of Mexico exhibited some of her paintings in early 1938. She made her first significant sale in the summer of 1938 when film star and art collector Edward G. Robinson purchased four paintings at $200 each. Even greater recognition followed when French Surrealist André Breton visited Rivera in April 1938. He was impressed by Kahlo, immediately claiming her as a surrealist and describing her work as 'a ribbon around a bomb'.", price: 700, historical_period: "Contemporary Era", profession: "artists", address: "Mexico")
character_five.photo.attach(io: file_five, filename: 'frida.jpg', content_type: 'image/jpg')
character_five.save
p character_five.errors

file_six = URI.open('https://static4.abc.es/Media/201501/06/foto-billy-nino--644x362.jpg')
character_six = Character.new(name: "Billy The Kid", user: user,  title: "Last Jailbreak", description: "In spring of  1881, toward the end of the Lincoln County War, William Bonney was jailed in Lincoln,  having been tried for the murder of Sheriff William Brady.  He would escape one last time from the courthouse jail on April 28th, killing Deputies JW Bell and R. Olinger on his way. ", price: 400, historical_period: "Modern Era", profession: "celebrity", address: "New York, USA")
character_six.photo.attach(io: file_six, filename: 'billy.jpg', content_type: 'image/jpg')
character_six.save
p character_six

file_four = URI.open('https://www.dreamteamfc.com/c/wp-content/uploads/sites/4/2018/11/Diego-Maradona-Hat-5.jpg?strip=all&quality=100&w=750')
character_four = Character.new(name: "Maradona", user: user, title: "The off-field life - Sex, Drugs & Football", description: "Live the exciting and troubled off-field life of Maradona during the 90's when he ended up banned from the field for abusing drugs.", price: 450, historical_period: "Contemporary Era", profession: "sports", address: "Barcelona, Spain")
character_four.photo.attach(io: file_four, filename: 'maradona_two.jpg', content_type: 'image/jpg')
character_four.save
p character_four

file_one = URI.open('https://static.dw.com/image/57410623_303.jpg')
character_one = Character.new(name: "Napoleon Bonaparte", user: user, title: "The Coronation of the Emperor 1804", description: "Napoleon's was a sacred ceremony held in the great cathedral of Notre Dame de Paris in the presence of Pope Pius VII. Napoleon brought together various rites and customs, incorporating ceremonies of Carolingian tradition, the Ancien Régime and the French Revolution, all presented in sumptuous luxury. On May 18, 1804, the Sénat conservateur vested the Republican government of the French First Republic in an emperor, and preparations for a coronation followed. Napoleon's elevation to emperor was overwhelmingly approved by the French citizens in the French constitutional referendum of 1804. Among Napoleon's motivations for being crowned were to gain prestige in international royalist and Catholic circles and to lay the foundation for a future dynasty.", price: 200, historical_period: "Modern Era", profession: "royalty", address: "Notre-Dame de Paris, Paris")
character_one.photo.attach(io: file_one, filename: 'napoleon.jpg', content_type: 'image/jpg')
character_one.save
p character_one

file_three = URI.open('https://upload.wikimedia.org/wikipedia/commons/7/7a/Maradona_gol_a_inglaterra.jpg')
character_three = Character.new(name: "Maradona", user: user, title: "1986 World Cup", description: "Maradona captained the Argentine national team to victory in the 1986 World Cup in Mexico, winning the final in Mexico City against West Germany.[78] Throughout the tournament, Maradona asserted his dominance and was the most dynamic player of the competition. He played every minute of every Argentina game, scoring five goals and making five assists, three of those in the opening match against South Korea at the Olímpico Universitario Stadium in Mexico City.", price: 300, historical_period: "Contemporary Era", profession: "sports", address: "Ciudad de Mexico, Mexico")
character_three.photo.attach(io: file_three, filename: 'maradona.jpg', content_type: 'image/jpg')
character_three.save
p character_three

file_two = URI.open('https://static.dw.com/image/57410623_303.jpg')
character_two = Character.new(name: "Napoleon Bonaparte", user: user, title: "The French Revolution (1789)", description: "One of the most celebrated personages in the history of the West. He revolutionized military organization and training; sponsored the Napoleonic Code, the prototype of later civil-law codes; reorganized education; and established the long-lived Concordat with the papacy.", price: 150, historical_period: "Modern Era", profession: "royalty", address: "Paris, France")
character_two.photo.attach(io: file_two, filename: 'napoleon_two.jpg', content_type: 'image/jpg')
character_two.save
p character_two
