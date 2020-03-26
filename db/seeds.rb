# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_a = Author.create(name: "Britney Spears", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Britney_Spears_2013_%28Straighten_Crop%29.jpg/200px-Britney_Spears_2013_%28Straighten_Crop%29.jpg")
author_b = Author.create(name: "Christina Aguilera", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Liberation_Tour_%2845997616942%29_%28cropped%29.jpg/220px-Liberation_Tour_%2845997616942%29_%28cropped%29.jpg ")
author_c = Author.create(name: "Adam Neumann", img_url: "https://www4.pictures.zimbio.com/gi/Adam+Neumann+kfdEVFM9XFFm.jpg")
author_d = Author.create(name: "Kanye West", img_url: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Kanye_West_at_the_2009_Tribeca_Film_Festival-2_%28cropped%29.jpg")
author_e = Author.create(name: "Brooke Shields", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Brooke_Shields_2011_%28Cropped%29.jpg/220px-Brooke_Shields_2011_%28Cropped%29.jpg")
author_f = Author.create(name: "Arnold Schwarzenegger", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Arnold_Schwarzenegger_by_Gage_Skidmore_4.jpg/220px-Arnold_Schwarzenegger_by_Gage_Skidmore_4.jpg")
author_g = Author.create(name: "Dalai Lama", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Dalailama1_20121014_4639.jpg/220px-Dalailama1_20121014_4639.jpg")
author_h = Author.create(name: "Elizabeth Hurley", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Elizabeth_Hurley08.jpg/170px-Elizabeth_Hurley08.jpg")
author_i = Author.create(name:"Ivana Trump", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Ivana_Trump_cropped_retouched.jpg/220px-Ivana_Trump_cropped_retouched.jpg")
author_j = Author.create(name: "Bill Clinton", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Bill_Clinton.jpg/220px-Bill_Clinton.jpg")
author_k = Author.create(name: "Mariah Carey", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Mariah_Carey_WBLS_2018_Interview_4.jpg/220px-Mariah_Carey_WBLS_2018_Interview_4.jpg")
author_l = Author.create(name: "George W Bush", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/George-W-Bush.jpeg/220px-George-W-Bush.jpeg")

quote_a = Quote.create(content: "I’ve never really wanted to go to Japan. Simply because I don’t like eating fish. And I know that’s very popular out there in Africa.", author: author_a)
quote_b = Quote.create(content: "So, where’s the Cannes Film Festival being held this year?" , author: author_b)
quote_c = Quote.create(content: "The single most powerful word is the word ‘we’" , author: author_c)
quote_d = Quote.create(content: "My greatest pain in life is that I will never be able to see muself perform live.", author: author_d)
quote_e = Quote.create(content: "Visiting my mind is like visiting the Hermes factory. Shit is real.", author: author_d)
quote_f = Quote.create(content: "I hate when I'm on a flight and I wake up with a water bottle next to me like oh great now I gotta be responsible for this water bottle.", author: author_d)
quote_g = Quote.create(content: "I am a proud non-reader of books.", author: author_d)
quote_h = Quote.create(content: "Smoking kills. If you're killed, you've lost an important part of your life.", author: author_e)
quote_i = Quote.create(content: "I think gay marriage is something that should be between a man and a woman.", author: author_f)
quote_j = Quote.create(content: "I mean, if a female Dalai Lama come, then she must be very attractive. Otherwise not much use.", author: author_g)
quote_k = Quote.create(content: "I’ve always thought Marilyn Monroe looked fabulous, but I’d kill myself if I was that fat.", author: author_h)
quote_l = Quote.create(content: "Fiction writing is great. You can make up almost anything.", author: author_i)
quote_m = Quote.create(content: "Politics gives guys so much power that they tend to behave badly around women. And I hope I never get into that.", author: author_j)
quote_n = Quote.create(content: "Whenever I watch TV and see those poor starving kids all over the world, I can't help but cry…I mean I'd love to be skinny like that, but not with all those flies and death and stuff.", author: author_k)
quote_o = Quote.create(content: "Rarely is the question asked: Is our children learning?", author: author_l)
quote_o = Quote.create(content: "I have opinions of my own –strong opinions– but I don’t always agree with them.", author: author_l)
quote_o = Quote.create(content: "I know the human being and fish can coexist peacefully.", author: author_l)

tag_a = Tag.create(name: "celebrity")
tag_b = Tag.create(name: "politician")
tag_c = Tag.create(name: "business")

authorTag_a = AuthorTag.create(author: author_a, tag: tag_a)
authorTag_b = AuthorTag.create(author: author_b, tag: tag_a)
puts "Seeded"



