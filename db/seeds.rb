# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_a = Author.create(name: "Britney Spears", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Britney_Spears_2013_%28Straighten_Crop%29.jpg/200px-Britney_Spears_2013_%28Straighten_Crop%29.jpg
")
author_b = Author.create(name: "Christina Aguilera", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Liberation_Tour_%2845997616942%29_%28cropped%29.jpg/220px-Liberation_Tour_%2845997616942%29_%28cropped%29.jpg ")
author_c = Author.create(name: "Adam Neumann", img_url: "https://en.wikipedia.org/wiki/File:TechCrunch_Disrupt_NY_2015_(17172830107)_cropped.jpg")
author_d = Author.create(name: "Kanye West", img_url: "https://www.nme.com/wp-content/uploads/2019/12/GettyImages-1186150147-696x442.jpg")

quote_a = Quote.create(content: "I’ve never really wanted to go to Japan. Simply because I don’t like eating fish. And I know that’s very popular out there in Africa", author: author_a)
quote_b = Quote.create(content: "So, where’s the Cannes Film Festival being held this year?" , author: author_b)
quote_c = Quote.create(content: "The single most powerful word is the word ‘we’" , author: author_c)
quote_d = Quote.create(content: "My greatest pain in life is that I will never be able to see muself perform live.", author: author_d)
quote_e = Quote.create(content: "Visiting my mind is like visiting the Hermes factory. Shit is real.", author: author_d)
quote_f = Quote.create(content: "I hate when I'm on a flight and I wake up with a water bottle next to me like oh great now I gotta be responsible for this water bottle.", author: author_d)
quote_g = Quote.create(content: "I am a proud non-reader of books", author: author_d)

tag_a = Tag.create(name: "celebrity")
tag_b = Tag.create(name: "politician")
tag_c = Tag.create(name: "business")

authorTag_a = AuthorTag.create(author: author_a, tag: tag_a)
authorTag_b = AuthorTag.create(author: author_b, tag: tag_a)
puts "Seeded"



