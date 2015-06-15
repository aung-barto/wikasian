response = HTTParty.get("http://api.randomuser.me/?results=10")

response["results"].shuffle.each do |result|
	# binding.pry
  User.create(name: result["user"]["name"]["first"].capitalize+" "+result["user"]["name"]["last"].capitalize, email: result["user"]["email"], u_img: result["user"]["picture"]["medium"], location: result["user"]["location"]["city"].capitalize+", "+result["user"]["location"]["state"].upcase)
end

# Article.destroy_all
Article.create(
	title: "Bangkok",
	content: "Bangkok is the capital and the most populous city of Thailand. It is known in Thai as Krung Thep Maha Nakhon (กรุงเทพมหานคร, pronounced  [krūŋ tʰêːp mahǎː nákʰɔ̄ːn] ( listen)) or simply About this sound Krung Thep (help·info). The city occupies 1,568.7 square kilometres (605.7 sq mi) in the Chao Phraya River delta in Central Thailand, and has a population of over 8 million, or 12.6 percent of the country's population. Over 14 million people (22.2 percent) live within the surrounding Bangkok Metropolitan Region, making Bangkok an extreme primate city, dwarfing Thailand's other urban centres in terms of importance.

Bangkok traces its roots to a small trading post during the Ayutthaya Kingdom in the 15th century, which eventually grew in size and became the site of two capital cities: Thonburi in 1768 and Rattanakosin in 1782. Bangkok was at the heart of Siam's (as Thailand used to be known) modernization during the later 19th century, as the country faced pressures from the West. The city was the centre stage of Thailand's political struggles throughout the 20th century, as the country abolished absolute monarchy, adopted constitutional rule and underwent numerous coups and uprisings. The city grew rapidly during the 1960s through the 1980s and now exerts a significant impact among Thailand's politics, economy, education, media and modern society.

The Asian investment boom in the 1980s and 1990s led many multinational corporations to locate their regional headquarters in Bangkok. The city is now a major regional force in finance and business. It is an international hub for transport and health care, and is emerging as a regional centre for the arts, fashion and entertainment. The city is known for its vibrant street life and cultural landmarks, as well as its notorious red-light districts. The historic Grand Palace and Buddhist temples including Wat Arun and Wat Pho stand in contrast with other tourist attractions such as the nightlife scenes of Khaosan Road and Patpong. Bangkok is among the world's top tourist destinations. It is named the most visited city in MasterCard's Global Destination Cities Index, and was named 'World's Best City' for four consecutive years by Travel + Leisure magazine.",
	img_url: "http://upload.wikimedia.org/wikipedia/commons/f/f6/Bangkok_skytrain_sunset.jpg",
	user_id: 2
)

Article.create(
	title: "Hong Kong",
	content: "Hong Kong (香港; 'Fragrant Harbour'), officially known as Hong Kong Special Administrative Region of the People's Republic of China, is a city located on the southern coast of China at the Pearl River Estuary and the South China Sea. Hong Kong is well known for its expansive skyline, deep natural harbour and extreme population density (some seven million inhabitants over a land mass of 1,104 km2 (426 sq mi)). The current population of Hong Kong comprises 93.6% ethnic Chinese. A major part of Hong Kong's Cantonese-speaking majority originated from the neighbouring Guangdong province, from where many fled during the Second Sino-Japanese War, the Chinese Civil War, and the communist rule in China.

After China's defeat in the First Opium War (1839–42) against the British Empire, Hong Kong became a British colony with the perpetual cession of Hong Kong Island, followed by Kowloon Peninsula in 1860 and a 99-year lease of the New Territories in 1898. After it was occupied by Japan during the Second World War (1941–45), the British resumed control until 30 June 1997. As a result of the negotiations between China and Britain, Hong Kong was transferred to the People's Republic of China under the 1984 Sino-British Joint Declaration. The city became China's first 'special administrative region' with a high degree of autonomy on 1 July 1997 under the principle of 'one country, two systems'.

Towards the late 1970s, Hong Kong became established as a major entrepôt between the world and China. The city has developed into a major global trade hub and financial centre, and is regarded as a world city and one of the eight Alpha+ cities. It ranked fifth on the 2014 Global Cities Index after New York City, London, Tokyo and Paris. The city has one of the highest per capita incomes in the world, and the most severe income inequality among the advanced economies. It has a high Human Development Index and is ranked highly in the Global Competitiveness Report. Hong Kong is the third most important financial centre after New York and London. The service economy, characterised by low taxation and free trade, has been regarded as one of the world's most laissez-faire economic policies, and the currency, the Hong Kong dollar, is the 13th most traded currency in the world.

Limited flat land created a necessity for dense infrastructure, and the city became a centre of modern architecture, earning Hong Kong the title as one of the world's most vertical cities. Hong Kong has a highly developed public transportation network covering 90 percent of the population, the highest rate in the world, and it relies on mass transit by road or rail. Air pollution remains a serious problem. Loose emissions standards have resulted in a high level of atmospheric particulates.",
	img_url: "http://upload.wikimedia.org/wikipedia/commons/e/e1/1_hongkong_panorama_victoria_peak_2011.JPG",
	user_id: 4
)

Article.create(
	title: "Ha-Noi",
	content: "Ha-Noi is the capital of Vietnam and the country's second largest city. Its population in 2009 was estimated at 2.6 million for urban districts, 6.5 million for the metropolitan jurisdiction. From 1010 until 1802, it was the most important political centre of Vietnam. It was eclipsed by Huế, the imperial capital of Vietnam during the Nguyễn Dynasty (1802–1945), but Hanoi served as the capital of French Indochina from 1902 to 1954. From 1954 to 1976, it was the capital of North Vietnam, and it became the capital of a reunified Vietnam in 1976, after the North's victory in the Vietnam War.

The city lies on the right bank of the Red River. Hanoi is 1,760 km (1,090 mi) north of Ho Chi Minh City and 120 km (75 mi) west of Hai Phong city.

October 2010 officially marked 1000 years since the establishment of the city. The Hanoi Ceramic Mosaic Mural is a 4 km ceramic mosaic mural created to mark the occasion.",
	img_url: "http://finedininglovers.cdn.crosscast-system.com/BlogPost/xl_5713_halong-bay-hanoi-finedininglovers.jpg",
	user_id: 6
)

# Event.destroy_all
Event.create(
	article_id: 1,
	user_id: 2,
	title: "Bangkok",
	content: "Bangkok is the capital and the most populous city of Thailand. It is known in Thai as Krung Thep Maha Nakhon (กรุงเทพมหานคร, pronounced  [krūŋ tʰêːp mahǎː nákʰɔ̄ːn] ( listen)) or simply About this sound Krung Thep (help·info). The city occupies 1,568.7 square kilometres (605.7 sq mi) in the Chao Phraya River delta in Central Thailand, and has a population of over 8 million, or 12.6 percent of the country's population. Over 14 million people (22.2 percent) live within the surrounding Bangkok Metropolitan Region, making Bangkok an extreme primate city, dwarfing Thailand's other urban centres in terms of importance.

Bangkok traces its roots to a small trading post during the Ayutthaya Kingdom in the 15th century, which eventually grew in size and became the site of two capital cities: Thonburi in 1768 and Rattanakosin in 1782. Bangkok was at the heart of Siam's (as Thailand used to be known) modernization during the later 19th century, as the country faced pressures from the West. The city was the centre stage of Thailand's political struggles throughout the 20th century, as the country abolished absolute monarchy, adopted constitutional rule and underwent numerous coups and uprisings. The city grew rapidly during the 1960s through the 1980s and now exerts a significant impact among Thailand's politics, economy, education, media and modern society.

The Asian investment boom in the 1980s and 1990s led many multinational corporations to locate their regional headquarters in Bangkok. The city is now a major regional force in finance and business. It is an international hub for transport and health care, and is emerging as a regional centre for the arts, fashion and entertainment. The city is known for its vibrant street life and cultural landmarks, as well as its notorious red-light districts. The historic Grand Palace and Buddhist temples including Wat Arun and Wat Pho stand in contrast with other tourist attractions such as the nightlife scenes of Khaosan Road and Patpong. Bangkok is among the world's top tourist destinations. It is named the most visited city in MasterCard's Global Destination Cities Index, and was named 'World's Best City' for four consecutive years by Travel + Leisure magazine.",
img_url: "http://upload.wikimedia.org/wikipedia/commons/f/f6/Bangkok_skytrain_sunset.jpg"
)

Event.create(
	article_id: 2,
	user_id: 4,
	title: "Hong Kong",
	content: "Hong Kong (香港; 'Fragrant Harbour'), officially known as Hong Kong Special Administrative Region of the People's Republic of China, is a city located on the southern coast of China at the Pearl River Estuary and the South China Sea. Hong Kong is well known for its expansive skyline, deep natural harbour and extreme population density (some seven million inhabitants over a land mass of 1,104 km2 (426 sq mi)). The current population of Hong Kong comprises 93.6% ethnic Chinese. A major part of Hong Kong's Cantonese-speaking majority originated from the neighbouring Guangdong province, from where many fled during the Second Sino-Japanese War, the Chinese Civil War, and the communist rule in China.

After China's defeat in the First Opium War (1839–42) against the British Empire, Hong Kong became a British colony with the perpetual cession of Hong Kong Island, followed by Kowloon Peninsula in 1860 and a 99-year lease of the New Territories in 1898. After it was occupied by Japan during the Second World War (1941–45), the British resumed control until 30 June 1997. As a result of the negotiations between China and Britain, Hong Kong was transferred to the People's Republic of China under the 1984 Sino-British Joint Declaration. The city became China's first 'special administrative region' with a high degree of autonomy on 1 July 1997 under the principle of 'one country, two systems'.

Towards the late 1970s, Hong Kong became established as a major entrepôt between the world and China. The city has developed into a major global trade hub and financial centre, and is regarded as a world city and one of the eight Alpha+ cities. It ranked fifth on the 2014 Global Cities Index after New York City, London, Tokyo and Paris. The city has one of the highest per capita incomes in the world, and the most severe income inequality among the advanced economies. It has a high Human Development Index and is ranked highly in the Global Competitiveness Report. Hong Kong is the third most important financial centre after New York and London. The service economy, characterised by low taxation and free trade, has been regarded as one of the world's most laissez-faire economic policies, and the currency, the Hong Kong dollar, is the 13th most traded currency in the world.

Limited flat land created a necessity for dense infrastructure, and the city became a centre of modern architecture, earning Hong Kong the title as one of the world's most vertical cities. Hong Kong has a highly developed public transportation network covering 90 percent of the population, the highest rate in the world, and it relies on mass transit by road or rail. Air pollution remains a serious problem. Loose emissions standards have resulted in a high level of atmospheric particulates.",
img_url: "http://upload.wikimedia.org/wikipedia/commons/e/e1/1_hongkong_panorama_victoria_peak_2011.JPG"
)

Event.create(
	article_id: 3,
	user_id: 6,
	title: "Ha-Noi",
	content: "Ha-Noi is the capital of Vietnam and the country's second largest city. Its population in 2009 was estimated at 2.6 million for urban districts, 6.5 million for the metropolitan jurisdiction. From 1010 until 1802, it was the most important political centre of Vietnam. It was eclipsed by Huế, the imperial capital of Vietnam during the Nguyễn Dynasty (1802–1945), but Hanoi served as the capital of French Indochina from 1902 to 1954. From 1954 to 1976, it was the capital of North Vietnam, and it became the capital of a reunified Vietnam in 1976, after the North's victory in the Vietnam War.

The city lies on the right bank of the Red River. Hanoi is 1,760 km (1,090 mi) north of Ho Chi Minh City and 120 km (75 mi) west of Hai Phong city.

October 2010 officially marked 1000 years since the establishment of the city. The Hanoi Ceramic Mosaic Mural is a 4 km ceramic mosaic mural created to mark the occasion.",
img_url: "http://finedininglovers.cdn.crosscast-system.com/BlogPost/xl_5713_halong-bay-hanoi-finedininglovers.jpg"
)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
