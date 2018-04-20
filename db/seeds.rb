# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Reservation.destroy_all
Review.destroy_all
Favorite.destroy_all

User.create(
  email: "guest@mail.com",
  password: "password",
  first_name: "Guest",
  last_name: ".",
  phone_number: "347-464-1688"
)

User.create(
  email: "zii@mail.com",
  password: "password",
  first_name: "Zii",
  last_name: "Wang",
  phone_number: "347-666-9999"
)

80.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
  )
end

User.create(
  email: "ting@mail.com",
  password: "password",
  first_name: "Ting",
  last_name: "Jiang",
  phone_number: "347-464-9988"
)


Restaurant.create(
  owner_id: 1,
  name: "Masa",
  address: "10 Columbus Cir",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "212-823-9800",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Masayoshi Takayama's appreciation for food started at a young age, growing up working for his family’s fish market in a town of Tochigi Prefecture, Japan. From his early years of delivering fresh sashimi to neighbors on his bicycle, to prepping and grilling hundreds of fish courses to cater weddings in high school, his relationship with food has always been a way of life.",
  logo: "https://res.cloudinary.com/chengzii/image/upload/v1523493767/masa_logo.jpg"
)

Restaurant.create(
  owner_id: 2,
  name: "Chef’s Table at Brooklyn Fare",
  address: "431 West 37th St",
  star: "3",
  city: "Broonkyn",
  state: "NY",
  zipcode: "10018",
  phone_number: "718-243-0050",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Chef's Table is Brooklyn Fare's three Michelin-starred restaurant. Settle into the kitchen counter for a communal dining experience featuring the cuisine of Chef Cesar Ramiez. The courses on the tasting menu change to reflect products in season.",
  logo: "https://cdn.vox-cdn.com/thumbor/Wwfx18Y_OBsxG6tbNAOt8i2tJgg=/0x0:720x480/1020x765/filters:focal(303x183:417x297)/cdn.vox-cdn.com/uploads/chorus_image/image/57389045/bkfare.0.0.jpg"
)

Restaurant.create(
  owner_id: 3,
  name: "Eleven Madison Park",
  address: "11 Madison Ave",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10010",
  phone_number: "212-889-0905",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Fine Dining",
  description: "Eleven Madison Park is a fine dining restaurant located in the heart of New York City. The restaurant overlooks one of the most beautiful parks in Manhattan, Madison Square Park, and sits at the base of a historic Art Deco building on the corner of 24th Street and Madison Avenue. Located here since 1998, it just underwent a full-scale renovation and redesign - during which the entire restaurant was moved to East Hampton for a summer-long pop-up, EMP Summer House.",
  logo: "https://cdn.vox-cdn.com/thumbor/GutvgapfESyFkJ7e4gEMamz3GJ0=/0x0:5412x3608/1220x915/filters:focal(2274x1372:3138x2236)/cdn.vox-cdn.com/uploads/chorus_image/image/57388207/AC1I0203.0.jpg"
)

Restaurant.create(
  owner_id: 4,
  name: "Le Bernardin",
  address: "155 W 51st St",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "212-554-1515",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Born in Paris in 1972 by sibling duo Maguy and Gilbert Le Coze, Le Bernardin only served fish: Fresh, simple and prepared with respect. After receiving its first Michelin star in 1976, and two more in 1980, the Le Coze’s set to open Le Bernardin in New York in 1986.",
  logo: "https://cdn.vox-cdn.com/thumbor/7Q2hZAuhRiWVYpgyIeUneDZT86Y=/0x0:528x377/1020x765/filters:focal(222x147:306x231)/cdn.vox-cdn.com/uploads/chorus_image/image/57389031/6128984658_747918b790_o.0.0.jpg"
)

Restaurant.create(
  owner_id: 5,
  name: "Per Se",
  address: "10 Columbus Cir",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10023",
  phone_number: "212-823-9335",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Opened in 2004, Per Se is Thomas Keller’s acclaimed New York interpretation of The French Laundry in the Time Warner Center at Columbus Circle. Designed by Adam D. Tihany, Per Se features a serene and intimate environment with spectacular views of Central Park and Columbus Circle.

The restaurant is Chef Keller’s second three-Michelin-starred property featuring his daily nine-course tasting menu and a nine-course vegetable tasting menu using classic French technique and the finest quality ingredients available. An award-winning wine list, boasting more than 2,000 bottles, complements the menu. The list highlights a collection of older wines as well as wines from small producers that are released in limited quantities. Per Se is a member of French-based associated Relais & Chateaux, Relais Gourmands and Traditions & Qualité organizations, recognized for their dedication to maintaining the highest international standards for hospitality and culinary excellence.",
  logo: "https://cdn.vox-cdn.com/thumbor/CrrGkyBIWd2hpq5HBzOMriewA44=/0x0:600x406/1020x765/filters:focal(252x155:348x251)/cdn.vox-cdn.com/uploads/chorus_image/image/57389023/PerSeKitchen.0.0.0.jpg"
)

Restaurant.create(
  owner_id: 6,
  name: "Jean-Georges",
  address: "1 Central Park West",
  star: "2",
  city: "New York",
  state: "NY",
  zipcode: "10023",
  phone_number: "212-299-3900",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Jean‑Georges opened in 1997 to critical acclaim. The jewel of Chef Jean‑Georges Vongerichten’s empire, the restaurant offers the very best in fine dining. Awarded four stars by the New York Times and two Michelin stars.",
  logo: "https://cdn.vox-cdn.com/thumbor/qytAeiRmsZ15Lj9Qg_7PEXehflQ=/0x0:1000x667/1020x765/filters:focal(420x254:580x414)/cdn.vox-cdn.com/uploads/chorus_image/image/57389019/1268037_714376971910330_678890327_o.0.0.jpg"
)

Restaurant.create(
  owner_id: 7,
  name: "Benu",
  address: "22 Hawthorne Street",
  star: "3",
  city: "San Francisco",
  state: "CA",
  zipcode: "94015",
  phone_number: "415-685-4860",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Benu offers a set tasting menu. In order to provide you with the best dining experience, we require advance notice for guests with dietary restrictions. For guests avoiding gluten, we are unable to completely remove soy sauce. It is used in many of our base preparations.",
  logo: "https://cdn.vox-cdn.com/thumbor/9FjFl90P4nghQh3UYuTvFqnpJZk=/0x0:2000x1333/1020x765/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/57429793/benu_bill_addison.0.jpg"
)

Restaurant.create(
  owner_id: 8,
  name: "Coi",
  address: "373 Broadway",
  star: "3",
  city: "San Francisco",
  state: "CA",
  zipcode: "94133",
  phone_number: "415-391-9000",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "COI is located in the North Beach neighborhood of San Francisco.
We offer one tasting menu nightly.
Wine pairings are available, as well as an extensive wine list.
The cost of the tasting menu is $250 per guest.",
  logo: "https://cdn.vox-cdn.com/thumbor/FejunCFZmk8V2C5iIJ2VYfE_h-I=/0x0:474x350/1020x765/filters:focal(200x138:274x212)/cdn.vox-cdn.com/uploads/chorus_image/image/57429795/sf_coi_ab_2016_9838___web.0.jpg"
)

Restaurant.create(
  owner_id: 9,
  name: "Manresa",
  address: "320 Village Ln",
  star: "3",
  city: "Los Gatos",
  state: "CA",
  zipcode: "95030",
  phone_number: "408-354-4330",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Manresa is the showcase for the inventive cuisine of Chef-Proprietor David Kinch. Chef Kinch and the Manresa team find inspiration from European traditions and refinement, American ingenuity and the vast bounty that California has to offer. ",
  logo: "https://cdn.vox-cdn.com/thumbor/wpotd7DlapsUAX3gLAD4Cr0Y-lE=/0x0:734x494/1020x765/filters:focal(309x189:425x305)/cdn.vox-cdn.com/uploads/chorus_image/image/57429799/Screen_Shot_2014-10-08_at_9.24.24_AM.0.0.png"
)

Restaurant.create(
  owner_id: 10,
  name: "Quince",
  address: "470 Pacific Avenue",
  star: "3",
  city: "San Francisco",
  state: "CA",
  zipcode: "94133",
  phone_number: "4157758500",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Situated in San Francisco's historic Jackson Square, Lindsay and Chef Michael Tusk's Quince features a nightly tasting menu that highlights the seasonal bounty of Northern California. The cost of the tasting menu is $275.",
  logo: "https://cdn.vox-cdn.com/thumbor/_FvKLIjxAaY_qxrs_1RTtd3tLE0=/0x0:1200x800/1020x765/filters:focal(504x304:696x496)/cdn.vox-cdn.com/uploads/chorus_image/image/57429801/IMG_0854_3554673050_O.0.0.jpg"
)

Restaurant.create(
  owner_id: 11,
  name: "Gary Danko",
  address: "800 N Point Street",
  star: "1",
  city: "San Francisco",
  state: "CA",
  zipcode: "94109",
  phone_number: "415-749-2060",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary French",
  description: "Seventeen years after opening its doors in San Francisco’s iconic Fisherman’s Wharf neighborhood, Restaurant Gary Danko continues to refine its award-winning combination of classic French cooking, thoughtful and inventive use of local ingredients, and personable yet impeccable service. “You don’t just open a great restaurant,” says Chef Gary Danko, “it’s a constant work in progress.” PLEASE NOTE: Gary Danko only accepts limited reservations on OpenTable. For more tables and availability, please call us directly.",
  logo: "https://cdn.vox-cdn.com/thumbor/8BfysyiOjukymlkcp-mPSgOPXKg=/0x0:864x525/1020x765/filters:focal(363x194:501x332)/cdn.vox-cdn.com/uploads/chorus_image/image/57429839/gary_danko.0.0.jpg"
)

Restaurant.create(
  owner_id: 12,
  name: "Acquerello",
  address: "1722 Sacramento St",
  star: "2",
  city: "San Francisco",
  state: "CA",
  zipcode: "94109",
  phone_number: "415-567-5432",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "For 28 years, Acquerello has offered an unparalleled Italian fine-dining experience in San Francisco’s Nob Hill neighborhood. The restaurant, operated by Giancarlo Paterlini and Executive Chef Suzette Gresham, has been heralded for its cuisine, wine, and service.",
  logo: "https://cdn.vox-cdn.com/thumbor/-vk5snSQUZC2BBR1A-uoAI6O9bI=/0x0:610x283/1020x765/filters:focal(257x94:353x190)/cdn.vox-cdn.com/uploads/chorus_image/image/57429807/140910_Acquerello_65.0.jpg"
)

Restaurant.create(
  owner_id: 13,
  name: "AL's Place",
  address: "1499 Valencia St",
  star: "1",
  city: "San Francisco",
  state: "CA",
  zipcode: "94110",
  phone_number: "415-416-6136",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Aaron London's new restaurant in the Mission, San Francisco. Northern California regional cuisine rooted in the produce and seafood of the Bay Area.",
  logo: "https://cdn.vox-cdn.com/thumbor/88nVqFNn1zXpDmBDUSUzC-awukY=/0x0:2000x1333/1020x765/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/57429823/ALsPlace_PChang-5.0.0.jpg"
)

Restaurant.create(
  owner_id: 14,
  name: "Aster",
  address: "1001 Guerrero Street",
  star: "1",
  city: "San Francisco",
  state: "CA",
  zipcode: "94110",
  phone_number: "415-875-9810",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Aster offers a 4 Course Prefix menu for $75, where each guest can create their own tasting menu.
Located in San Francisco, Aster is a 1-star Michelin rated restaurant serving up creative California cuisine in a warm & cozy, casual setting. On the menu are familiar favorites, elevated through carefully sourced and house-made ingredients and the impeccable technique of chef/owner Brett Cooper and his team.",
  logo: "https://cdn.vox-cdn.com/thumbor/DH4Cxjpq7dl_HG3QE_pG60zZaXc=/0x0:2000x1333/1020x765/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/57429825/Aster_PChang-7.0.0.jpg"
)

Restaurant.create(
  owner_id: 15,
  name: "Campton Place",
  address: "340 Stokton Street",
  star: "1",
  city: "San Francisco",
  state: "CA",
  zipcode: "94108",
  phone_number: "",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary French",
  description: "Winner of 2 coveted Michelin Stars for 2016 as well as 2017, and winner of one Michelin star for 5 years prior, Campton Place Restaurant is an oasis of exceptional service and extraordinary cuisine just steps from Union Square.
A landmark dining destination for over two decades, Chef Srijith Gopinathan continues the legacy of the country’s most renowned chefs who have called Campton Place home. Chef Sri’s sophisticated cooking style combines French classical techniques with local, seasonal ingredients and global flavors, particularly those from South Asia.",
  logo: "https://cdn.vox-cdn.com/thumbor/SG1eNmf4nsJJy6c1ryaMtFneLFU=/0x0:958x322/1020x765/filters:focal(403x85:555x237)/cdn.vox-cdn.com/uploads/chorus_image/image/57429831/01.0.0.png"
)

Restaurant.create(
  owner_id: 16,
  name: "Commonwealth",
  address: "2224 Mission Street",
  star: "1",
  city: "San Francisco",
  state: "CA",
  zipcode: "94110",
  phone_number: "415-355-1500",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Located in the heart of San Francisco's Mission District, Commonwealth is a progressive American restaurant. Chef Jason Fox takes a decidedly global approach to California's tradition of showcasing local, seasonal foods by incorporating diverse culinary ingredients and techniques. Commonwealth also donates part of the proceeds from Chef Fox’s tasting menus ($85) to local non-profits.",
  logo: "https://cdn.vox-cdn.com/thumbor/82xqLuTssBweh_7oNL2m5Grv2Rs=/0x0:700x525/1020x765/filters:focal(294x207:406x319)/cdn.vox-cdn.com/uploads/chorus_image/image/57429835/commonwealth.0.0.jpg"
)

Restaurant.create(
  owner_id: 17,
  name: "The Modern",
  address: "9 W 53rd Street",
  star: "2",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "212-333-1220",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "The Modern is a 2 Michelin-starred contemporary American restaurant at the Museum of Modern Art. Helmed by Executive Chef Abram Bissell, the restaurant features refined, playful dishes that highlight exceptional ingredients and seasonality in a $168 four-course menu and a $228 eight-course tasting menu. Lunch offers a $138 three-course menu or $178 six-course menu. Master Sommelier Michaël Engelmann's extensive selection of wines showcases exceptional diversity and value.",
  logo: "https://cdn.vox-cdn.com/thumbor/s3itw0ZFGfwBmSyivesacedf-ME=/0x0:1600x807/1020x765/filters:focal(672x276:928x532)/cdn.vox-cdn.com/uploads/chorus_image/image/57389033/11187765_10153247476930140_942734355215030168_o__1_.0.0.jpg"
)

Restaurant.create(
  owner_id: 18,
  name: "Aquavit",
  address: "65 East 55th Street",
  star: "2",
  city: "New York",
  state: "NY",
  zipcode: "10022",
  phone_number: "212-307-7311",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Two Michelin-starred and New York Times Three-starred Aquavit, located in Midtown Manhattan showcases seasonal, Modern Nordic fare and has been a pioneer of Nordic cuisine since opening in 1987. The restaurant has an extensive wine list as well as an aquavit infusion and cocktail program. At lunch we offer an a la carte menu, a 3-course prix fixe for $58pp, and a 5-course seasonal tasting menu for $105pp. At dinner we offer a 3-course prix fixe for $105pp, a 5-course seasonal tasting menu for $135pp and a 11-course chef's tasting menu for $175pp.",
  logo: "https://cdn.vox-cdn.com/thumbor/xxomQ_XtZmIIIiu5lb4U77r_Xx8=/0x0:2000x1331/1020x765/filters:focal(840x506:1160x826)/cdn.vox-cdn.com/uploads/chorus_image/image/57389035/14971407624_20fec26d3d_o.0.0.jpg"
)

Restaurant.create(
  owner_id: 19,
  name: "Caviar Russe",
  address: "538 Madison Avenue",
  star: "1",
  city: "New York",
  state: "NY",
  zipcode: "10020",
  phone_number: "212-980-5908",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary French",
  description: "Tucked away on Madison Avenue this Michelin Star restaurant serves out the best caviar available, complimenting it with some of the finest cuisine in NYC.",
  logo: "https://cdn.vox-cdn.com/thumbor/kksuDhx_paNrIFAslie_UM6-4gM=/0x0:596x592/1020x765/filters:focal(251x249:345x343)/cdn.vox-cdn.com/uploads/chorus_image/image/57389037/12020024_1203258679689774_3265744249338374890_n.0.0.png"
)

Restaurant.create(
  owner_id: 20,
  name: "Daniel",
  address: "60 East 65th St",
  star: "2",
  city: "New York",
  state: "NY",
  zipcode: "10065",
  phone_number: "212-288-0033",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Daniel Boulud’s namesake restaurant features contemporary, seasonal French cuisine in a setting that combines striking neoclassical architecture with elegant modern furnishings. The sophisticated bar and lounge are a welcoming spot for before and after dinner drinks.",
  logo: "https://cdn.vox-cdn.com/thumbor/IJfS0Jk-CssfALUcMl30avdGtsg=/0x0:1000x665/1020x765/filters:focal(420x253:580x413)/cdn.vox-cdn.com/uploads/chorus_image/image/57389027/daniel.0.0.jpg"
)

Restaurant.create(
  owner_id: 21,
  name: "Marea",
  address: "240 Central Park South",
  star: "2",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Marea Ristorante, located in one of Manhattans most storied addresses, features Chef Michael White's ode to Italian seafood. From his trademark handmade pastas to his fresh crudo and whole fish, Chef White is committed to reinventing the notion of seafood in New York.",
  logo: "https://cdn.vox-cdn.com/thumbor/qhoxK9ClB0BDj7wyIPkL-Xdry9o=/0x0:528x351/1020x765/filters:focal(222x134:306x218)/cdn.vox-cdn.com/uploads/chorus_image/image/57389025/3530066814_1489b47154_o.0.0.jpg"
)

Restaurant.create(
  owner_id: 22,
  name: "Café Boulud",
  address: "20 E 76th St",
  star: "1",
  city: "New York",
  state: "NY",
  zipcode: "10021",
  phone_number: "212-772-2600",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "CAFÉ BOULUD features a French-American menu inspired by Chef Daniel Boulud's four culinary muses: la tradition, classic French cuisine; la saison, seasonal delicacies; le potager, the vegetable garden; and le voyage, the flavors of world cuisines. ",
  logo: "https://cdn.vox-cdn.com/thumbor/rwZ--7-qedEZhi8cwDArVecROoc=/0x0:960x795/1020x765/filters:focal(404x322:556x474)/cdn.vox-cdn.com/uploads/chorus_image/image/57389017/110888536_10152957212796730_8013862048883697008_n.0.0.jpg"
)

Restaurant.create(
  owner_id: 23,
  name: "Dovetail",
  address: "103 W 77th St",
  star: "1",
  city: "New York",
  state: "NY",
  zipcode: "10024",
  phone_number: "212-362-3800",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Located just steps away from the American Museum of Natural History and Central Park on Manhattan’s Upper West Side, Dovetail offers an intimate dining experience showcasing Chef John Fraser’s award-winning contemporary American cuisine and creative use of seasonal, farm-fresh ingredients. Dovetail has been recognized with numerous accolades over the years since its opening, including Wine Spectator’s prestigious Award of Excellence, three stars from The New York Times and has consistently earned a Michelin Guide star since 2011. Dovetail offers a myriad of dining options throughout the week. Choose from our three or four course prix fixe, chef’s tasting menu or a la carte dining at the bar. Pre-theater, vegan and vegetarian menus are available nightly.",
  logo: "https://cdn.vox-cdn.com/thumbor/d94bZv8beC5FxBlSGnNtgD_7_r8=/0x0:5796x3872/1020x765/filters:focal(2435x1473:3361x2399)/cdn.vox-cdn.com/uploads/chorus_image/image/57389015/20150709-Dovetail-1.0.0.jpg"
)

Restaurant.create(
  owner_id: 24,
  name: "Michael's Restaurant",
  address: "1147 3rd St",
  star: "1",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90403",
  phone_number: "310-451-0843",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Chef Miles Thompson is steering a pretty big boat these days with Michael’s in Santa Monica. The long-standing restaurant has been in the hit-making business for decades, helping to launch the career of countless well-known chefs, but it’s all now in the hands of the eager wunderkind who navigates between classic menu items like foie gras and all-new interpretations like hamachi collar with fish-sauce caramel. Add in the gorgeous leafy patio, the always eclectic crowd, and the fun-loving Michael McCarty himself working the room, and it’s smooth sailing at one of LA’s most iconic restaurants.",
  logo: "https://cdn.vox-cdn.com/thumbor/UZrddgIgOgZxGCM7rAH4M5jJD_o=/0x0:2000x1335/1020x765/filters:focal(840x508:1160x828)/cdn.vox-cdn.com/uploads/chorus_image/image/58261873/2016-09-14-michaels-004.0.0.jpg"
)

Restaurant.create(
  owner_id: 25,
  name: "Cassia",
  address: "1314 7th St",
  star: "1",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90401",
  phone_number: "310-393-6699",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Bryant and Kim Ng partnered with Rustic Canyon’s Josh Loeb and Zoe Nathan for a powerhouse restaurant in Santa Monica. The vibe is wonderful: Expansive and vibrant without being too formal, it's the kind of place one can drop in for a cocktail and raw seafood at the bar, or a long sit-down dinner with friends. The plates recall Bryant’s upbringing, incorporating flavors of Singapore and Vietnam with a heavy dose of French technique.",
  logo: "https://cdn.vox-cdn.com/thumbor/xW39BgTwGpvZQEXvSoXymEQP-gI=/0x0:2000x1331/1020x765/filters:focal(840x506:1160x826)/cdn.vox-cdn.com/uploads/chorus_image/image/56977465/2015-06-18-cassia-005.0.0.jpg"
)

Restaurant.create(
  owner_id: 26,
  name: "Scratch|Bar & Kitchen",
  address: "",
  star: "1",
  city: "Los Angeles",
  state: "CA",
  zipcode: "",
  phone_number: "",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Phillip Frankland and Margarita Lee have taken their tasting menu restaurant to the next level thanks to a retooled dining experience (like the cocktails and amuse bouches at a secret new bar) and a sharper, more polished set of dishes. This Encino restaurant is now the premier dining destination in the Valley, with a slew of creative and flavorful dishes that excite and delight diners with every course. Reservations required.",
  logo: "https://cdn.vox-cdn.com/thumbor/8-Ow7z0y_GB71-_RpoWYxsg4mcM=/0x0:6720x4480/1020x765/filters:focal(2823x1703:3897x2777)/cdn.vox-cdn.com/uploads/chorus_image/image/59341103/JakobLayman.0118.ScratchBarandKitchen_393_1.0.jpg"
)

Restaurant.create(
  owner_id: 27,
  name: "Rose Cafe-Restaurant",
  address: "220 Rose Ave",
  star: "2",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90291",
  phone_number: "310-399-0711",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "This iconic Venice restaurant has undergone a complete makeover, offering a wide-ranging menu to anticipate the neighborhood’s every dining need, from breakfast through dinner service. Jason Neroni's produce-driven, pasta-centric menu is sure to please most people, while the multifaceted building allows for everything from a casual bite at the bar to a more composed sit-down experience on the patio.",
  logo: "https://cdn.vox-cdn.com/thumbor/o30i4O0DSBXLkNt2okld8Rh8lqo=/0x0:2000x1331/1020x765/filters:focal(840x506:1160x826)/cdn.vox-cdn.com/uploads/chorus_image/image/56977469/2015-11-04-rosecafe-009.0.0.jpg"
)

Restaurant.create(
  owner_id: 28,
  name: "Felix",
  address: "1023 Abbot Kinney Blvd",
  star: "2",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90291",
  phone_number: "424-387-8622",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Evan Funke returns to Los Angeles with one of the city’s most celebrated new restaurants, a temple of pasta and Italian cuisine in Venice in the iconic former Joe’s space along Abbot Kinney. Start with the superb focaccia, served in a plush round at the start of the meal. Then venture into one of the fresh salads prepared as lovingly as the pastas. But the main draws are the handmade pastas: rigatoni all’amatriciana, tonnarelli cacio e pepe, and pappardelle bolognese.",
  logo: "https://cdn.vox-cdn.com/thumbor/LnDlm1uH6WpQZX9rw75uqMDsWHA=/0x0:2000x1335/1020x765/filters:focal(840x508:1160x828)/cdn.vox-cdn.com/uploads/chorus_image/image/58261875/2017_03_31_Felix_021.0.jpg"
)

Restaurant.create(
  owner_id: 29,
  name: "N-Naka",
  address: "3455 Overland Ave",
  star: "2",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90034",
  phone_number: "310-836-6252",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Niki Nakayama’s phenomenal California-Japanese kaiseki might possibly be the most impressive restaurant to visit in Los Angeles. If the Michelin Guide were still rating in LA, n/naka would be a strong contender for three stars. The hidden-in-plain-sight building in Palms hosts one of the warmest, loveliest dining rooms, with fantastic wine pairings and pristine seafood prepared with a master’s touch. Reservations required, often weeks in advance.",
  logo: "https://cdn.vox-cdn.com/thumbor/DznypgSH-jXvKKyDVRN-HkZmays=/0x0:2000x1335/1020x765/filters:focal(840x508:1160x828)/cdn.vox-cdn.com/uploads/chorus_image/image/56977547/2017_06_13_n_naka_014.0.jpg"
)

Restaurant.create(
  owner_id: 30,
  name: "Manhattan Beach Post",
  address: "1142 Manhattan Ave",
  star: "3",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90266",
  phone_number: "310-545-5405",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "David LeFevre's enduring Manhattan Beach restaurant remains packed every night of the week thanks to its crowd-pleasing menu of market-driven fare with a chef's touch. The dark environs make for a perfect date spot just steps from the ocean, while crave-worthy fare like the cheddar bacon biscuits, green curry mussels, and braised lamb belly convince diners to become regulars after just one bite.",
  logo: "https://cdn.vox-cdn.com/thumbor/1Zk5kwZex0nyaf8mf2hPwLv_wvg=/0x0:1000x667/1020x765/filters:focal(420x254:580x414)/cdn.vox-cdn.com/uploads/chorus_image/image/56977471/011_11_12_STONE_COLD_STUNNERS_MB_POST-38.0.0.jpg"
)

Restaurant.create(
  owner_id: 30,
  name: "Spago",
  address: "176 N Canon Dr",
  star: "3",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90210",
  phone_number: "310-385-0880",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Wolfgang Puck's Beverly Hills flagship still has a compelling tasting menu that stands up to the city's best. Throw in a star-powered crowd with world-class service, and there's a truly iconic LA restaurant that will appeal to high-end diners and people-watchers alike. Don't be surprised if Wolfgang himself is working the dining room and giving tours to the kitchen.",
  logo: "https://cdn.vox-cdn.com/thumbor/6_yk_fgNapNTyZZsyYkGIGn55hs=/0x0:1000x667/1020x765/filters:focal(420x254:580x414)/cdn.vox-cdn.com/uploads/chorus_image/image/56977475/10_2012_SPAGO-45.0.0.jpg"
)

Restaurant.create(
  owner_id: 31,
  name: "Lukshon",
  address: "3239 Helms Ave",
  star: "3",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90232",
  phone_number: "310-202-6808",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Korean",
  description: "Sang Yoon put together one of the most impressive (and most unsung) dining rooms in the city. Yoon continues to tinker with the Asian-inspired menu, pulling off old favorites and testing new ones without any remorse. All the flavors will seem familiar, but come presented in a fresh, more thoughtful way. If LA had its own version of New York’s rollicking Momofuku Ssam Bar, this might be it.",
  logo: "https://cdn.vox-cdn.com/thumbor/d2B5Vk-LWACEo2xTvshrZ-wJ5ro=/0x0:571x427/1020x765/filters:focal(241x169:331x259)/cdn.vox-cdn.com/uploads/chorus_image/image/56977479/lukshon.0.0.jpg"
)

Restaurant.create(
  owner_id: 32,
  name: "A.O.C.",
  address: "8700 W 3rd St",
  star: "3",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90048",
  phone_number: "310-859-9859",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Suzanne Goin and Caroline Styne’s enduring West Third Street classic has one of the most pleasant patio spaces in town, making for a quality lunch with perfect produce and great execution. Dinner’s even more expansive, with Goin's trademark touch on rustic American cuisine coupled with suave service. Nearly everyone has a plate of the Spanish fried chicken on their table, though anything from the wood oven would be a solid dish to order. A.O.C. is one of LA’s modern icons, and everyone should dine here at least once a year.",
  logo: "https://cdn.vox-cdn.com/thumbor/Jy-moZN1-f6iMtiUP9svVR5xIeM=/0x0:800x510/1020x765/filters:focal(336x191:464x319)/cdn.vox-cdn.com/uploads/chorus_image/image/56977481/aoc5_INTERIOR.0.0.jpg"
)

Restaurant.create(
  owner_id: 33,
  name: "Jon & Vinny’s",
  address: "412 N Fairfax Ave",
  star: "2",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90036",
  phone_number: "323-334-3369",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Jon Shook and Vinny Dotolo wanted to put their mark on Fairfax, and while their still-excellent restaurant Animal occupies the western part of the block, this shiny Italian-American-inspired place is all the rage. With composed pastas and salads and some fine pizzas, it's the kind of comfort food that everyone can get behind.",
  logo: "https://cdn.vox-cdn.com/thumbor/C3Q3DtzUYEvezRT6rKgAqIdwLDs=/0x0:2000x1331/1020x765/filters:focal(840x506:1160x826)/cdn.vox-cdn.com/uploads/chorus_image/image/56977485/2015-04-18-JonVinnys-005.0.0.jpg"
)

Restaurant.create(
  owner_id: 34,
  name: "Republique",
  address: "624 South La Brea Ave",
  star: "1",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90036",
  phone_number: "310-362-6115",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "When Walter and Margarita Manzke took over the iconic Campanile space, they knew the stakes were high. And who in LA would have thought they would’ve succeeded this much, offering a swell breakfast-to-dinner menu with a French point of view? Throw in some pockets of new American and even Asian influences and the bill of fare will likely appeal to everyone. The desserts, breads, and pastries by Margarita are near perfect, while the charcuterie board is sure to stun anyone.",
  logo: "https://cdn.vox-cdn.com/thumbor/i7Q5grpT1YdmI9EkU71MBmo1G8c=/0x0:1394x958/1020x765/filters:focal(586x368:808x590)/cdn.vox-cdn.com/uploads/chorus_image/image/56977489/republique.0.0.jpg"
)

Restaurant.create(
  owner_id: 35,
  name: "Luv2eat Thai Bistro",
  address: "6660 Sunset Blvd P",
  star: "2",
  city: "Los Angeles",
  state: "CA",
  zipcode: "90028",
  phone_number: "323-498-5835",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Since it opened just a few years ago, Luv2eat has ascended into the heights of LA's Thai restaurant scene with wonderfully prepared plates of Southern and sometimes Northern specialties. The Phuket-style crab curry should be on every table, along with the khao soi. Kua gling, a Southern Thai spicy dry meat curry, is fantastic, along with the fried sour Thai sausage, served with crunchy vegetables. Just remember, anything “medium” spicy or above will likely blow the lights out for most people, so order mild if insane spice is an issue.",
  logo: "https://cdn.vox-cdn.com/thumbor/nLHdfEhfRYBRyY3b4GFsKisAxhI=/0x0:594x599/1020x765/filters:focal(250x253:344x347)/cdn.vox-cdn.com/uploads/chorus_image/image/56977501/Screen_Shot_2017_07_24_at_12.28.29_PM.0.png"
)

Restaurant.create(
  owner_id: 36,
  name: "Alinea",
  address: "1723 N Halsted St",
  star: "3",
  city: "Chicago",
  state: "IL",
  zipcode: "60614",
  phone_number: "312-867-0110",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Dining at Alinea is not only delicious, but also fun, emotional, and provocative. After a complete renovation in 2016, Alinea now features three unique and distinct experiences: The Gallery, The Salons, and the Kitchen Table. Alinea has been universally praised for its innovative approach to modernist cuisine. It has four times been named the Best Restaurant in America and is one of only 13 restaurants in the U.S. to earn the coveted Michelin 3-Star rating. We look forward to welcoming...+ More",
  logo: "https://cdn.vox-cdn.com/thumbor/JBHjebEKCeJ7gqKrjrOJmgeKJ_U=/0x0:2048x1367/1020x765/filters:focal(1257x635:1583x961)/cdn.vox-cdn.com/uploads/chorus_image/image/57240073/14324404_1194840237243738_3371027755255943143_o.0.jpg"
)

Restaurant.create(
  owner_id: 37,
  name: "Grace",
  address: "652 W Randolph St",
  star: "3",
  city: "Chicago",
  state: "IL",
  zipcode: "60661",
  phone_number: "312-234-9494",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Grace, the highly anticipated restaurant from acclaimed chef Curtis Duffy, opened late 2012 in the Randolph Street area, just west of downtown Chicago. The subtle elegance of the dining room provides a comfortably luxurious setting in which to enjoy Chef Duffy's Progressive American cuisine, offered in a tasting menu format. In addition to the dining room, a private dining space to accommodate up to 12 is available, as well as a lounge for a pre- or post-dinner drink.",
  logo: "https://cdn.vox-cdn.com/thumbor/I6HvQhHnjQC3PFCXZreeEp4ItWs=/0x0:2048x1365/1020x765/filters:focal(861x520:1187x846)/cdn.vox-cdn.com/uploads/chorus_image/image/57240075/22548883_1578412772219977_7220683683718921224_o.0.jpg"
)

Restaurant.create(
  owner_id: 38,
  name: "Acadia",
  address: "1639 S Wabash Ave",
  star: "2",
  city: "Chicago",
  state: "IL",
  zipcode: "60616",
  phone_number: "312-360-9500",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Acadia is a two star Michelin restaurant in Chicago's South Loop Neighborhood. Chef Ryan McCaskey's seven course menu is seasonal with contemporary takes on classic food. Most roots come from classic American, French and Italian influences. Seafood and shellfish products will mostly be sourced from the area in Maine where Chef McCaskey spent his summers, but also which happens to be a source to some of the highest quality shellfish in the world.",
  logo: "https://cdn.vox-cdn.com/thumbor/tZ4BsFeWLfC45eEmvSL5Mhktf3M=/0x0:960x606/1020x765/filters:focal(404x227:556x379)/cdn.vox-cdn.com/uploads/chorus_image/image/57240077/22491552_1797096406980212_4872594173605159850_n.0.jpg"
)

Restaurant.create(
  owner_id: 39,
  name: "Oriole",
  address: "661 W Walnut St",
  star: "2",
  city: "Chicago",
  state: "IL",
  zipcode: "60661",
  phone_number: "312-877-5339",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Oriole is a restaurant hidden down an alley-like street in Chicago’s West Loop neighborhood, offering an extended tasting menu presented by Executive Chef & Owner Noah Sandoval.
The Michelin-starred and Jean Banchet award-winning team hosts 28 in an intimate and elegant dining room shared with an open kitchen.
Never bending to industry trends, the dishes and service at Oriole give guests a thought-provoking and interactive experience, where the diner is the true focus of the meal.
",
  logo: "https://cdn.vox-cdn.com/thumbor/IykKF-CI4VjQMv1ry5a8szLhzqE=/0x0:960x960/1020x765/filters:focal(404x404:556x556)/cdn.vox-cdn.com/uploads/chorus_image/image/57240079/16649053_1394790953926016_447703365172402037_n.0.jpg"
)

Restaurant.create(
  owner_id: 40,
  name: "Sixteen",
  address: "401 N Wabash Ave",
  star: "2",
  city: "Chicago",
  state: "IL",
  zipcode: "60611",
  phone_number: "312-588-8030",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Located on the 16th floor of Trump International Hotel & Tower, the signature Two-Michelin star rated Sixteen offers panoramic views of the Chicago skyline. Chef Dostal’s innovative dinner menu showcases the highest quality ingredients and shows the guest a new approach to modern cuisine.",
  logo: "https://cdn.vox-cdn.com/thumbor/RoNPzkaImsAoXnynTDgPX2tdLsY=/0x0:1080x1080/1020x765/filters:focal(454x454:626x626)/cdn.vox-cdn.com/uploads/chorus_image/image/57240081/22181225_10155863229153413_7017392436904691460_o.0.jpg"
)

Restaurant.create(
  owner_id: 41,
  name: "Smyth",
  address: "177 N Ada St #101",
  star: "2",
  city: "Chicago",
  state: "IL",
  zipcode: "60607",
  phone_number: "773-913-3773",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Located in Chicago’s West Loop neighborhood, John Shields & Karen Urie Shields present two distinct, exciting restaurants, Smyth and The Loyalist.
SMYTH features a joyful tasting menu journey, offering flexible 5-, 8-, or 12-course experiences. The menu changes every day, as the Shields’ travel to The Farm. This unique collaboration is the heartbeat of Smyth, the source of the restaurant’s inspiration and its living pantry.",
  logo: "https://cdn.vox-cdn.com/thumbor/sHARgeLlJMIAv0s1aGsy4pipkNc=/0x0:1080x1080/1020x765/filters:focal(454x454:626x626)/cdn.vox-cdn.com/uploads/chorus_image/image/57240083/19983682_1942059039366719_5160591221179369274_o.0.jpg"
)

Restaurant.create(
  owner_id: 42,
  name: "Band of Bohemia",
  address: "4710 N Ravenswood Ave",
  star: "1",
  city: "Chicago",
  state: "IL",
  zipcode: "60640",
  phone_number: "773-271-4710",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Located in Chicago's Ravenswood neighborhood, Band of Bohemia strives to offer a pairings-based experience, beginning with our rotating collection of culinary-inspired session ales brewed in-house. Our seasonally influenced menu is driven by the philosophy that one can create a unique beer that is appropriate, if not essential, to a finer dining experience.",
  logo: "https://cdn.vox-cdn.com/thumbor/woTPWCPChdJbkgnzh3sbIEzEdj0=/0x0:469x586/1020x765/filters:focal(198x256:272x330)/cdn.vox-cdn.com/uploads/chorus_image/image/57240085/20106587_1438861612857470_695657884639674149_n.0.png"
)
Restaurant.create(
  owner_id: 43,
  name: "Blackbird Restaurant",
  address: "619 W. Randolph",
  star: "1",
  city: "Chicago",
  state: "IL",
  zipcode: "60661",
  phone_number: "312-715-0708",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "At Blackbird, we are true believers in elegance through freedom. Freedom of interpretation, which often happens upon creating a culinary experience through art. Each year, we look to collaborate with an artist on a private, one-night dinner, during which our Chef de Cuisine, Ryan Pfeiffer, creates a menu that evokes the same depth of emotion and feeling as our featured artist's work.",
  logo: "https://cdn.vox-cdn.com/thumbor/WMdKDOuqWhWxfmJ7x2pr4rx6E7k=/0x0:1080x1080/1020x765/filters:focal(454x454:626x626)/cdn.vox-cdn.com/uploads/chorus_image/image/57240087/10358915_10153949777283540_7226800148309040075_o.0.jpg"
)
Restaurant.create(
  owner_id: 44,
  name: "Boka",
  address: "1729 N Halsted St",
  star: "1",
  city: "Chicago",
  state: "IL",
  zipcode: "60614",
  phone_number: "312-337-6070",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Michelin starred Boka Restaurant has been a fixture in Chicago dining since 2003. In January 2014, Chef Lee Wolen joined as Executive Chef/Partner after the restaurant underwent a major renovation. Since his time at Boka, critics have taken notice. Phil Vettel of Chicago Tribune and Eater Chicago both named Lee as “2014 Chef of the Year.” Most recently, Lee was named 2015 “Chef of the Year” and Boka restaurant was awarded 2015 “Restaurant of the Year” at Chicago’s coveted Jean Banchet Awards. Boka’s food features contemporary, American cuisine, focusing on seasonality and sourcing as many local ingredients as possible. Pasty Chef Meg Galus joined Boka’s kitchen in 2015 and provides a seamless transition between savory and sweet, mirroring Wolen’s use of excellent, high quality ingredients that are prepared and plated beautifully.",
  logo: "https://cdn.vox-cdn.com/thumbor/EMgXwQBjOD2i8Sz2P8JAC2WPbP0=/0x0:1365x2048/1020x765/filters:focal(574x915:792x1133)/cdn.vox-cdn.com/uploads/chorus_image/image/57240089/20045469_692050924252731_5880653084363013551_o.0.jpg"
)
Restaurant.create(
  owner_id: 45,
  name: "Sepia",
  address: "123 N Jefferson St",
  star: "1",
  city: "Chicago",
  state: "IL",
  zipcode: "60661",
  phone_number: "312-441-1920",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Seamlessly melding refined and rustic, vintage and contemporary, Sepia has the feel of an instant classic. The stylish space is warm and inviting, comfortable yet lively. Attention to detail runs throughout Sepia -- both in the room and on the plate -- from the custom Art Nouveau tile floor to the hand-crafted millwork and the vintage stemware. The easy elegance of the room serves as the perfect backdrop for the inventive American cuisine. Chef Andrew Zimmerman's product-driven, seasonal menu showcases the purity and quality of the ingredients, letting both the ingredients and his passion for what he does shine through. Sepia celebrates tradition – with a modern twist.",
  logo: "https://cdn.vox-cdn.com/thumbor/LsP6alJLGxZTa31zyZ3kZllQCQg=/0x0:960x640/1020x765/filters:focal(404x244:556x396)/cdn.vox-cdn.com/uploads/chorus_image/image/57240117/12376120_10153126713942447_2998190812230758035_n.0.jpg"
)

Restaurant.create(
  owner_id: 46,
  name: "The Inn at Little Washington",
  address: "309 Middle St",
  star: "3",
  city: "Washington",
  state: "VA",
  zipcode: "22747",
  phone_number: "540-675-3800",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "A third Michelin star continues to elude self-taught chef and restaurateur Patrick O’Connell, who will celebrate the 40th anniversary of the world renowned Inn at Little Washington next year.",
  logo: "https://cdn.vox-cdn.com/thumbor/LprWlRyzV6Ac7Vrmc6MLR6nFq4s=/0x0:960x720/1020x765/filters:focal(320x202:472x354)/cdn.vox-cdn.com/uploads/chorus_image/image/57189261/Inn_at_Little_Washington_VA_lobster.0.jpg"
)

Restaurant.create(
  owner_id: 47,
  name: "Minibar",
  address: "855 E St NW",
  star: "2",
  city: "Washington",
  state: "VA",
  zipcode: "20004",
  phone_number: "202-393-0812",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "Minibar, a two Michelin-starred restaurant, is a study in avant-garde cooking where each bite is designed to thrill the senses by pushing the limits of what we have come to expect - and what is possible - from food. The creations combine art and science, as well as tradition and technique, to deliver an imaginative and progressive tasting menu, offered at a communal setting for up to 6 guests.",
  logo: "https://cdn.vox-cdn.com/thumbor/XJnm5-Oq8MxzrzxXd3X1XKKTfBA=/0x0:960x640/1020x765/filters:focal(393x247:545x399)/cdn.vox-cdn.com/uploads/chorus_image/image/57189265/Minibar_DC_food.0.jpg"
)

Restaurant.create(
  owner_id: 48,
  name: "Pineapple and Pearls",
  address: "715 8th St SE",
  star: "2",
  city: "Washington",
  state: "VA",
  zipcode: "20003",
  phone_number: "202-595-7375",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "We offer an elegant yet playful tasting menu comprised of approximately twelve courses with paired beverages (either with or without alcohol, depending on your preference) for a singular ticket price that is all inclusive; gratuity, tax, food and beverages. Just show up, let us take care of you, and enjoy yourself! ",
  logo: "https://cdn.vox-cdn.com/thumbor/o-UeEYnzbWFf9y7peycIYNhN_m0=/0x0:960x640/1020x765/filters:focal(385x307:537x459)/cdn.vox-cdn.com/uploads/chorus_image/image/57189269/Pineapple_and_Pearls_DC_food.0.jpg"
)

Restaurant.create(
  owner_id: 49,
  name: "Blue Duck Tavern",
  address: "1201 24th St NW",
  star: "2",
  city: "Washington",
  state: "VA",
  zipcode: "20037",
  phone_number: "202-419-6755",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Blue Duck Tavern, a contemporary neighborhood restaurant, invites its guests to gather and celebrate in good taste with a menu focusing on the freshest ingredients available from local purveyors and artisans. The menu notes every farm where the main ingredient for the dish was raised before its journey to the table. Dishes are genuine, time-honored and traditional -- slow roasting in wood embers, braising, preserving and smoking techniques bring the true flavors of America's great, simple and wholesome foods to the Blue Duck Tavern.",
  logo: "https://cdn.vox-cdn.com/thumbor/tc4LsqIh4jJoyi-kJNDwUwdRtk8=/0x0:960x640/1020x765/filters:focal(459x195:611x347)/cdn.vox-cdn.com/uploads/chorus_image/image/57189271/Blue_Duck_Tavern_DC_food.0.jpg"
)

Restaurant.create(
  owner_id: 50,
  name: "Tail Up Goat",
  address: "1827 Adams Mill Rd NW",
  star: "1",
  city: "Washington",
  state: "VA",
  zipcode: "20009",
  phone_number: "202-986-9600",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "This Adams Morgan eatery with a globally inspired menu (and a soft spot for all things Caribbean) stands with one star.",
  logo: "https://cdn.vox-cdn.com/thumbor/I00EXrvf8gZFta24l5Xoii35hSg=/0x0:899x703/1020x765/filters:focal(186x184:328x326)/cdn.vox-cdn.com/uploads/chorus_image/image/57189291/Tail_Up_Goat_DC_food.0.jpg"
)

Restaurant.create(
  owner_id: 51,
  name: "Métier",
  address: "1015 7th St NW",
  star: "1",
  city: "Washington",
  state: "VA",
  zipcode: "20001",
  phone_number: "202-737-7500",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Per Ellis, finally admitting the prix fixe companion to Kinship was all about ensuring that the guided tasting tours consistently led to a transportive experience.",
  logo: "https://cdn.vox-cdn.com/thumbor/o_YpcIloZfVrrU1tSN-EMaAlMJA=/0x0:960x960/1020x765/filters:focal(434x391:586x543)/cdn.vox-cdn.com/uploads/chorus_image/image/57189283/Metier_DC_food.0.jpg"
)

Restaurant.create(
  owner_id: 52,
  name: "Masseria",
  address: "1340 4th St NE",
  star: "1",
  city: "Washington",
  state: "VA",
  zipcode: "20002",
  phone_number: "202-608-1330",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Restaurateur Nicholas Stefanelli’s prix fixe Italian restaurant stands with one star. The expansion-minded chef will have new ways to woo inspectors next spring once his three-story, hybrid bar/restaurant/market debuts inside the Wharf complex.",
  logo: "https://cdn.vox-cdn.com/thumbor/hWUtoErZ7AjCqB1lv0oe8uTlsmw=/0x0:908x605/1020x765/filters:focal(281x200:425x344)/cdn.vox-cdn.com/uploads/chorus_image/image/57189281/Masseria_DC_linguine.0.jpg"
)

Restaurant.create(
  owner_id: 53,
  name: "Komi",
  address: "1509 17th St NW",
  star: "1",
  city: "Washington",
  state: "VA",
  zipcode: "20036",
  phone_number: "202-332-9200",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Seafood",
  description: "Michelin Guide director Michael Ellis billed Komi founder Johnny Monis as “a great inspiration” to other local chefs. “We’re going to continue to follow him very closely,” he says of the driving force behind this tasting menu-centric Greek restaurant.",
  logo: "https://cdn.vox-cdn.com/thumbor/czVc-89LvR3vosaQNCWk7LKNbZg=/0x0:960x720/1020x765/filters:focal(356x431:508x583)/cdn.vox-cdn.com/uploads/chorus_image/image/57189279/Komi_DC_fish.0.jpg"
)

Restaurant.create(
  owner_id: 54,
  name: "The Dabney",
  address: "122 Blagden Alley NW",
  star: "1",
  city: "Washington",
  state: "VA",
  zipcode: "20001",
  phone_number: "202-450-1015",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Local sourcing champ Jeremiah Langhorne’s Shaw restaurant stands with one star. Might his new wine bar, Dabney Cellar, prove intoxicating enough to earn him a higher rating next year?",
  logo: "https://cdn.vox-cdn.com/thumbor/HPcBiIqtn_Zn1uiVjWX_DQVTs_4=/0x0:742x742/1020x765/filters:focal(353x350:471x468)/cdn.vox-cdn.com/uploads/chorus_image/image/57189273/Dabney_DC_quail.0.jpg"
)

Restaurant.create(
  owner_id: 55,
  name: "Hitchcock",
  address: "133 Winslow Way E Suite 100",
  star: "3",
  city: "Seattle",
  state: "WA",
  zipcode: "98110",
  phone_number: "206-201-3789",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Hitchcock is chef Brendan McGill’s ode to the land he’s worked since moving to Bainbridge Island years ago. He opened the restaurant in 2010, and though the initial buzz has died down, there are still outstanding things happening here. “Microseasonal” in its approach and therefore obsessive about its preservation techniques, Hitchcock features local produce, seafood, and meat, flawlessly executed. The wine-pairing program is strong, too.",
  logo: "https://cdn.vox-cdn.com/thumbor/ZeSC0WZWpM_Ol3KePMG-jTg8V9Y=/0x0:1627x1133/1020x765/filters:focal(684x437:944x697)/cdn.vox-cdn.com/uploads/chorus_image/image/59339257/11705521_995468873828997_3370975274006679221_o.0.0.jpg"
)

Restaurant.create(
  owner_id: 56,
  name: "FlintCreek Cattle Co",
  address: "8421 Greenwood Ave N",
  star: "2",
  city: "Seattle",
  state: "WA",
  zipcode: "98103",
  phone_number: "206-457-5656",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Despite its name, the sibling to seafood-stunner Rockcreek focuses more on responsibly raised game meats (quail pate, bison hanger steak, wild boar shoulder) than on beef. Even more surprising is the quality of the vegetable dishes, like the pickled vegetables with blue cheese-tahini sauce, which make even vegetarians feel well taken care of. Together with a fantastic cocktail list and a chic 120-seat corner-space boasting a mezzanine and huge windows, this is Greenwood’s first real destination restaurant.",
  logo: "https://cdn.vox-cdn.com/thumbor/aU_hQgoTFym91Vcp0TmUTSDC5aY=/0x0:2000x1500/1020x765/filters:focal(840x590:1160x910)/cdn.vox-cdn.com/uploads/chorus_image/image/59339259/eatersea0117_flintcreek_adam.0.0.jpg"
)

Restaurant.create(
  owner_id: 57,
  name: "JuneBaby",
  address: "2122 NE 65th St",
  star: "1",
  city: "Seattle",
  state: "WA",
  zipcode: "98115",
  phone_number: "206-257-4470",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Chef Edouardo Jordan’s second Ravenna eatery, a a highly personal exploration of Jordan’s heritage and Eater Seattle’s pick for 2017 Restaurant of the Year, is America’s next great Southern restaurant. Vegetable-heavy selections like a salad of “swamp cabbage” (hearts of palm) and pickled strawberry, classic chitterlings and catfish and grits, and rotating nightly specials are served in a casual, boisterous setting that also tells a powerful tale of race, family, and class through the menu and artwork. A hefty online encyclopedia of Southern terms helps Seattle diners better prepare for the culinary and history lessons that await them.",
  logo: "https://cdn.vox-cdn.com/thumbor/fDYgpFY9whR47b2dQH3Xmq3nsDM=/0x0:2300x1533/1020x765/filters:focal(966x583:1334x951)/cdn.vox-cdn.com/uploads/chorus_image/image/59339267/junebaby_catfishandgrits.0.0.0.0.jpg"
)

Restaurant.create(
  owner_id: 58,
  name: "Wataru",
  address: "2400 NE 65th St",
  star: "2",
  city: "Seattle",
  state: "WA",
  zipcode: "98115",
  phone_number: "206-525-2073",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Japanese",
  description: "Sushi legend Shiro Kashiba continues to spread his influence throughout Seattle, as former students perfect their own styles and, as some have suggested of Wataru’s Kotaro Kumita, even surpass their former master. Ordering omakase at the chef’s counter is the best way to experience this intimate restaurant’s Edomae-style sushi, which is subtly manipulated — cured, marinated, smoked, sliced — to unlock new flavors in familiar seasonal items like geoduck and scallops.",
  logo: "https://cdn.vox-cdn.com/thumbor/Vi_lb84bai5u4J1CtGBSCeHMYuQ=/0x0:1000x746/1020x765/filters:focal(420x293:580x453)/cdn.vox-cdn.com/uploads/chorus_image/image/59339269/eatersea0117_wataru_yelp_kathleen_c.0.0.jpg"
)

Restaurant.create(
  owner_id: 59,
  name: "Harvest Beat",
  address: "1711 N 45th Street",
  star: "1",
  city: "Seattle",
  state: "WA",
  zipcode: "98103",
  phone_number: "206-547-1348",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Critics of veganism rarely associate a word like “fun” with the plant-based cuisine, but Harvest Beat — spiritual successor to Sutra, RIP — is joyous, exuding a respect for its ingredients and their provenance as well as a relaxed vibe that’s far more hippie than hip. It wouldn’t amount to a hill of heirloom beans if the food weren’t spot on, but the creative, ever-changing tasting menu experience here will inspire Meatless Mondays for months to come.",
  logo: "https://cdn.vox-cdn.com/thumbor/0xPVJiARdd6pdAxf1KoX3hV3BIM=/0x0:1200x800/1020x765/filters:focal(504x304:696x496)/cdn.vox-cdn.com/uploads/chorus_image/image/59339273/eatersea0716_harvest_beat_fb.0.0.jpg"
)

Restaurant.create(
  owner_id: 60,
  name: "Joule",
  address: "3506 Stone Way N",
  star: "1",
  city: "Seattle",
  state: "WA",
  zipcode: "98103",
  phone_number: "206-632-5685",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Contemporary American",
  description: "Husband-and-wife duo Rachel Yang and Seif Chirchi keep falling just short of a James Beard Award; nevertheless, their hip, unconventional Korean steakhouse deserves the attention it gets, with a lively atmosphere and wickedly good dishes from Kalbi beef short ribs with grilled kimchi to smoked tofu salad.",
  logo: "https://cdn.vox-cdn.com/thumbor/3dUogm1IX_9jv6Ok64HjI8olwmM=/0x0:2000x1333/1020x765/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/59339285/joule_shortrib.0.0.0.0.0.jpg"
)

Restaurant.create(
  owner_id: 61,
  name: "Spinasse",
  address: "1531 14th Ave",
  star: "2",
  city: "Seattle",
  state: "WA",
  zipcode: "98122",
  phone_number: "206-251-7673",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "This trattoria shines with memorable pastas and Piedmont-influenced fare — the nest of tajarin with butter and sage sauce is a true Seattle icon. And adjoining bar Artusi is a perfect place for a nightcap.",
  logo: "https://cdn.vox-cdn.com/thumbor/K-cjapxsTA4qsyFO3L9_dEAhLI4=/0x0:2000x1333/1020x765/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/59339299/eatersea0417_spinasse_tajarin_official.0.0.jpg"
)

Restaurant.create(
  owner_id: 62,
  name: "Le Pichet",
  address: "1933 1st Ave",
  star: "1",
  city: "Seattle",
  state: "WA",
  zipcode: "98101",
  phone_number: "206-256-1499",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "French",
  description: "This traditional French bistro boasts both a legendary roast chicken that takes up to an hour to prepare and an informal charm that makes diners want to linger all afternoon with some charcuterie and cheese. And the soups here, from classic French onion or creamy mushroom to specials like celery root puree with walnut oil, will fend off any fall chills.",
  logo: "https://cdn.vox-cdn.com/thumbor/BLxJAqqHQsif4GrG2Y16gwBo5Oc=/0x0:2592x1728/1020x765/filters:focal(1089x657:1503x1071)/cdn.vox-cdn.com/uploads/chorus_image/image/59339311/SOUPLePichet.0.0.jpg"
)

Restaurant.create(
  owner_id: 63,
  name: "Il Corvo",
  address: "217 James St",
  star: "1",
  city: "Seattle",
  state: "WA",
  zipcode: "98104",
  phone_number: "206-538-0999",
  open_time: "12:00:00",
  close_time: "22:00:00",
  cuisine: "Italian",
  description: "Mike Easton’s handmade pasta and charcuterie are a regular habit for Seattle diners, but only at lunch on weekdays. Stand in line for some of the finest and most affordable fare around, at the kind of restaurant that every neighborhood needs.",
  logo: "https://cdn.vox-cdn.com/thumbor/63tNjXVGI8xRp_d-RzJM60BisWE=/0x0:4755x3170/1020x765/filters:focal(1998x1205:2758x1965)/cdn.vox-cdn.com/uploads/chorus_image/image/59339317/pesto2_ilcorvo16.0.0.0.0.jpg"
)


12.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "12:00:00",
    close_time: "20:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end



Reservation.create(
  user_id: 1,
  restaurant_id: 1,
  time: "19",
  date: "2018-04-01",
  seats: 2
)

Reservation.create(
  user_id: 1,
  restaurant_id: 2,
  time: "18",
  date: "2018-05-07",
  seats: 5
)

Reservation.create(
  user_id: 1,
  restaurant_id: 3,
  time: "18",
  date: "2018-06-07",
  seats: 3
)

4.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..63).to_a.sample,
    time: ("11".."21").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..10).to_a.sample
  )
end

8.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..63).to_a.sample,
    time: ("12".."20").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (1..10).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..63).to_a.sample,
    time: ("12".."20").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..10).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..63).to_a.sample,
    time: ("12".."20").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (2..8).to_a.sample
  )
end


commentData = [
"We had the best waitress ever. She was super attentive to our needs, very informative of the menu and specials, and took care of our every need. We had two kids with us 4-6 yrs old that spilled their water twice. Our waitress never skipped a beat and helped us clean up with no problems. We had the lamb chop, steak, seafood, two bottles of Malbec and it was fantastic. Amazing food and great service. We also had the best view of the Amazon spheres and I would definitely come back.",

"We were there for the Seattle restaurant week and it was a little upsetting that our whole table had to order from the restaurant week menu only. One of my friends wanted to get what’s on the regular menu but we’re told that it would disrupt the time which was ridiculous since we ordered 2 appetizers.

The food was good even though we only had the bread and the butter, and the octopus appetizer. The drinks looked very pristine.

We were just upset about the service and had to leave early. We cannot force our friends to get something from the Seattle restaurant week menu if the person wants something from the regular menu. It was just crazy.
",

"Had Sunday Brunch. The food was excellent. Had eggs benedict with crab. The eggs were cooked to perfection. The fried potatoes were some of the best I have ever had. The service was very good. Highly recommend.",

"This was our first time and we will definitely be back. The food was delicious, presentation was wonderful and Katie our server was the icing on the cake. Best service in a Seattle restaurant in a very long time.",

"Food was amazing and the staff was attentive. Will definitely return.",

"This was a great place for lunch. I highly recommend the fried chicken sandwich - one of best I’ve ever had.
",

"After walking all over the city and realizing we were hungry, my family and I did a quick OpenTable search for a restaurant and landed on 2120. Not knowing the area restaurants too well, were a little nervous but luckily 2120 was great. We started out with cocktails and tea, then got the blistered shishito peppers as an appetizer. They were more oily than we'd like but otherwise very enjoyable, slightly spicy and paired with nuts. For our mains we got a burger, risotto, and arugula salad and we were all quite pleased, and my dad really loved his burger. Our server was very attentive and friendly and, combined with the vibe of the restaurant and the food itself, made for a really great overall dinner experience.",

"Nice place to have a Saturday morning Brunch",

"We received excellent service at the restaurant. We were a group of four conducting a business luncheon. Food was excellent.",

"Good. Would go back",

"Location is neat near the spheres, very trendy design, and appealing menu options. Food was good but nothing spectacular. We both got ribeye steaks medium rare and they came out raw in the middle, which was particularly concerning since the steaks came cut already so it was not even hidden. We had them cooked longer and when they came back, the plate was missing the leeks that were on top.",

"Staff were super friendly & timely. Food ok, not amazing.",

"Lamb shank was dank",

"Good food, smaller portions (probably what they should be) but eat bite was delicious. The bread and butter was unreal. Kinda loud though.",

"The experience overall was pretty good. They have their menu online so you can know what you’re getting and how much it is ahead of time. The server was prompt and attentive. I had the Dungeness Crab Eggs Benedict accompanied by potatoes and a the special caramelized pineapple mimosa. The Benedict and mimosa were very good, but the potatoes were too salty. My husband got the steak and eggs with fingerling potatoes and he too said they were too salty.",

"Tasty place, and close to downtown! Enjoyed brunch here with some of my friends and the service was excellent.",

"I’ll go back it was that good !",

"Booked for a friends birthday - food was excellent and menu varied. There was a great drinks menu also with some very creative cocktails.
The restaurant was a great value. Be sure to order the bread and butter the butter has a really addictive flavor.",

"Love the location next to Amazon Spheres. Food and service are outstanding! Miss their sister restaurant in Bellevue. Try the Octopus and avocado toast, yum!",

"Wait or was nice and helpful. I asked for sriracha mayo or chipotle mayo. He told me they do not have but got me sriracha and chalua to mix with my aioli they did give me.",

"Great food - music vibe was strange. Super loud and not great music.",

"2120 had great food. The salmon was really good, but it was upstaged by a fantastic burger. Reasonable price for a nice sitdown dinner. Interesting view of the Amazon pod office next door.",

"I’m extremely picky but everything was great tonight - food, service and ambience.",

"We went to celebrate Valentine’s. Great downtown location. Understated ambiance, hip menu, delicious food. The only blemish was our waitress, who came across a touch offhand. Almost surly. She never smiled, made next to no eye contact, and whatever little she spoke was in the tone of a teacher. Maybe she was having a bad night. We still gave her a good tip but it did colour our dining experience.",

"We had a great time. The food was amazing. We had the Brussel sprouts and beets as appetizers and both were great. The risotto was a little small for an entree, but the lamb shank was excellently cooked. It fell right off the bone. Environment and clientele was a bit corporate, but that’s what you get right next to Amazon offices. I would go back for the appetizers and it looks like they have good fancy drinks.",

"Really enjoyed it. Thank you!",

"We enjoyed a very good dinner. The golden cauliflower was very tasty, a little sweet, and the Mac and Cheese had an amazing blend of light cheeses. The steak and salmon entrees were tremendous.",

"Food was great but it took long time to get our Salad .. also it took some time to get us seated as there was only one person in the front desk who was also attending calls .. however, enjoyed the dining part of it !",

"The waiter recommended the steak, he was right. Delicious",

"Great service, great tasting food!",

"The Chicken was too well done on the outside. Had a chard taste.",

"I thought the food was delicious and the atmosphere to be trendy upscale. The service was great and its a nice place for friends, a date, business dinner or groups. Was a bit empty on a Friday night at 9pm but Seattle seems to be a sleepy city coming from NYC.",

"Excellent food and service and great view. Reservation was ready when we arrived and we were seated immediately.",

"I was not very impressed with the main course meal. I had the garlic shrimp over pasta. I feel as if I could have made it myself and it would have tasted better. I have always loved Anthony's, but it just wasn't good this time.

",

"Made our reservations for Easter brunch, and were fortunate to have made it earlier in the day so it wasn't too busy or loud. Ladies at hostess stand were kind enough to give us a booth since we had my 94-year old mother with us. A table out in the middle makes it hard for her to hear, whereas a booth makes it so much easier. Our server was lacking in attention, however our busboy was very gracious and attentive.",

"A pleasant dining experience. Helpful hostess used the reservation comments to prepare a table that was in a good location. Service was excellent and the food was exceptional. Our party of 4 was extremely happy.

",

"Great view, mediocre food and horrible service. Every dish gets rice and green beans. Try a little bit. On a positive note: Best valet ever!",

"Joining me for dinner were some close friends that I had not seen in quite a while. We had a lot to catch up on. After we finished eating we were still taking up the table talking. The restaurant was quite busy, at no time were we rushed to give up the table. I really appreciated that.",

"My teenage daughter and I came in tonight to celebrate a few things. We were seated at a table for two overlooking the twinkling lights around Lake Washington. We started with the Ahi Nachos. I didn’t expect them to have as much flavor as they did, but wow!!! We were blown away by the freshness and the flavor. I highly recommend that appetizer. Our server Cara dropped by and said the entrees were taking awhile and dropped off some complimentary clam chowder for us. We didn’t really notice, but we love their chowder so we savored that, along with their crusty sourdough. When our entrees arrived, we both laughed at the huge portions! My daughter’s trout was almost as big as her. I had the salmon, and we felt both were great. And as we were waiting for the bill, good ol’ Cara dropped off a creme brûlée for us. What a great night at Anthony’s! Fun, delicious... and we are stuuuuuuuffed!!! I’ll think about you Cara when I get on the scale tomorrow!! Great service. Thanks for taking such good care of us!",

"Excellent Food with outstanding wine list and great service",

"We had the sunset dinner which was a good value. The salmon was done well and tasted great. The chocolate mouse was OK. The staff was very pleasant, friendly and professional. The place has a fantastic view. My only disappointment is that the interior is very dated and that takes away from the ambiance.",

"We got there right before sunset and had a beautiful view! The food was a little to cookie cutter for an expensive restaurant. We all got the same boring sides and salad was not included and way over priced.

Appetizer was good, service great.",

"Great place , great service , generous flavourable portions , and on the waterfront",

"The appetizers were great, the chowder was as well! Unfortunately I found the Lingcod bland and the rice pilaf boring and bland! I would have loved a choice of starch, none given. The green beans were just about perfect , the service was Great!",

"Absolutely amazing!",

"The lamb sirloin is outstanding.A signature dish worth having.",

"One of the most wonderful dining experience , from the Sommelier to the Chef who came out and greeted us personally.",

"This restaurant should be getting all five stars, the food was that good. It was delicious, imaginative, and beautifully presented by an excellent staff. However, the seating at the Chef's Table was AWFUL. Knowing that adults will be sitting through a 4-hour experience and providing only a wooden bench without a back? That ruined the pleasure considerably. While the entire restaurant was filled with beautiful tables and chairs, the chef's table had 2 plastic chairs on one side and a aforementioned bench on the other side. This seemed unfair and unnecessary. Too bad, I can't recommend people subject themselves to this.",

"One of the best meals I've had. All of the courses were relatively simple, but the flavors were incredible (well beyond their ingredients). I'm still rather blown away thinking back.",

"Perfect food. Chef is a genius. Service is impeccable. The restaurant is absolutely beautiful. Go now and go often!",

"The meal was excellent. Every course was great, some very simple but delicious, others like the quail in an artichoke showed incredible technique and flavor. Fun wine list is small but hits great wines from everywhere. Service was attentive and unobtrusive. Watching everyone in he open kitchen work so well together was an awesome experience.",

"What a delectable meal! The flavor profiles for each course were simple, yet divine. The service was impeccable. Highly recommend to anyone considering a tasting menu experience.",

"Not worth the $250 per person price. The duck was terrible.",

"Everything and everyone were terrific.",

"my wife and i just finished watching ugly delicious, then we were planning a spring break to the city, decided to give this a whirl.",

"Amazing experience to my boyfriend’s birthday. Did the wine pairing with the tasting menu and was fabulous!",

"The portion of each dish is too big.",

"Great and personal experience. Checked up on frequently and attentive waitress provided everything I required. Thank you for the great experience.",

"extremely pricey but the most incredible meal I have ever had. everything was well presented and delicious. creative as well",

"One of the best meal's I've ever had, but also the most expensive. We did the full tasting menu, which is some 15 odd courses and left very satisfied and VERY full (don't have a big lunch before hand!)",

"Great hospitality. Incredible food. Fantastic wine list. Friendly chefs. Excellent service. Tremendous dining experience.",

"This was one of the best dining experiences I have ever had.",

"Exceptional meal...great service..only negative was an unapproachable wine list ..although the 75 dollar gammay we had was fantastic .",

"This was one of the best dining experiences I have ever had.",

"Amazing dinner!!",

"It's a beautiful and experimental menu full of both bright and rich flavors! Highly recommend!",

"Un lugar cercano a la perfección, asumiendo que ésta es para Dios.",

"Everything exceeded our expectations, which were very high. We can't wait to go back!",

"I feel so disappointed. The decorations of dishes are extremely bad. The food tastes moderately. Dishes do not show any techni at all. The ingredients of dishes are also moderately. Won’t go back again. It does not at michelin two stars standard at all.",

"An amazing experience in every way. Everything about it was flawless, from the moment we stepped in the door until the moment we left. It goes without saying that the food was spectacular, but more than that, the service and ambience struck just the right note between formal and casual, the pacing of the meal never felt rushed or too slow, the portions were just right, and I really can't think of anything about the whole meal that I would change. Sitting at the counter and watching the chefs work their magic was an added bonus. It's a thoroughly modern interpretation of fine dining, and it all works beautifully. A meal at Ko is a splurge, but if you're celebrating a special occasion or just looking for an amazing and memorable dining experience, go for it--you won't regret it.",

"Great service and spectacular food. Always a pleasure to dine here.",

"Spectacular in every way. Truly one of the world’s best.",

"In overall the restaurant is excellent, the food is amazing, the kitchen staff super friendly and nice. The only thing that I would change is the music.",

"It was a wonderful experience! I will definately recomend to my closest friends! Thank you",

"Everything we expected and more. Just when you think a given course was the best thing you ate, they blow your mind with the next course",

"Food was not bad. However I got sick afterwards; could have been the duck which I overate.",

"incredible meal, pricey but worth every penny. Service & Food our outstanding. A great night out.",

"It's the best",

"Food was really disappointing, nothing outstanding.",

"Superb service and gracious staff. Food was brilliant. Made creative alternatives addressing my food allergies. Really went out of their way.",

"Amazing food! We go back every year and have a wonderful time every timr",

"Amazing! Highly recommended. The staff is súper friendly and the food was just amazing!!!",

"absolutely delicious!",

"Houston was great and the service generally was impeccable.",

"Service and food quality at its finest",

"Wonderful experience. Can’t wait to go back!",

"Excellent！I enjoyed the whole meals and I can‘t love more. Each dish was charming and delicious，and the service was great！Plan your trip to momofuku ko，I promise you will never be disappointed！",

"Culinary indulgence with attention to detail and uber creative.",

"This was my second time dining at the new location and it keeps getting better. The creativity and presentation were amazing and the staff was outstanding.",

"The food here is interesting. Like nothing else. Despite there only being 20 or so seats, there's no starting time for meals and so it's somewhat strange with people coming and going.",

"Everything was very good. The food was amazing and very innovative. The only thing I didn’t like were two staff members who gave a pretencious vibe to the place while the others were attentive and very nice. It was just a huge contrast. The place is expensive but for a special occasion is the perfect place to go!",

"It was our anniversary so we treated ourselves to the drinks pairing menu, was great not to have to think about what wine to order when you don’t know the food menu ahead but the number of drinks were too many for me, especially with the smaller starter portions.
Food was lovely & the experience of sitting around the prep area with the chefs explaining each course was wonderful.
The chefs are great fun & happy to engage with you.
Just wish we’d booked earlier so we could’ve started our meal before 9.30pm, finishing 13 courses at 1am was a lot!
Defo worth it",

"Creative food, good service. My only wish was that there were more vegetable dishes and more hot dishes. Felt that most of the dishes were on the room temp or cold. But I am just nitpicking. Great restaurant and good food.",

"Too expensive, not the best Michelin",

"Truly splendid and top notch!",

"Prefer this meal over that of Blanca, which was somewhat spotty.",

"Great experience. Some plates are magnifique.. but not all.",

"Creative dishes presented with friendly service.
Perhaps the best wine pairing I’ve had.",

"Absolutely OTT, delicious and satisfying. An unique experience",

"One of the finest dining experiences I’ve had. Would recommend to anyone and everyone.",

"Over-priced and underwhelming. Fair food, but didn’t feel experimental or especially tied-together. Some plates were good, many were mediocre, and none wowed.
",

"Really great and interesting food. We had some stuff we have not had before like a brown rice sake. Also neat that the pairing included a couple cocktails. Really fun experience if you like well thought out food.",

"Food did not complement well, the sauce fought with the main ingredients, resulting in weird taste.",

"Excellent!!!! Fantastic I!!!

",

"Amazing experience - food, service, even the music (LCD Soundsystem)! Thank you so much for the memorable night!",

"Interesting and tasty food, worth the experience. Unusual winelist - a lot of age on many bottles with a price tag to match. Intimate atmosphere.",

"Excellent food and a great team. It is a pleasure to see them working in the open kitchen. Very relaxed absolutely impressing.",

"Expensive - but worth it. Had the wine pairing which was very good.",

"Oh, it was a wonderful night, and I enjoyed this trip. The dry age beef which was my favorite dish, and that was so delicious as melt in my mouth. And blackfish which was pretty tasty.",

"Fabulous in all regards. Service is top notch. Food is outstanding and so creative.",

"Not nearly as intimate or wonderful as it once was. That said, pretty damn good!",

"The every meal was cooked to perfection.",

"Really fun meal. Seasonal products. Japanese influence. Really friendly attentive chef. Highly recommended. :)",

"Wonderful interesting food. Waiters and chefs were friendly

",

"Perfection.",

"Our dinner was just amazing and above all our expectations. The menu is so creative with lots of taste. And the attention to details is just perfect and not at all overwhelming. Definitely an experience to be repeated

",

"The service was impeccable however, the food was nothing special and some courses were straightly bad. Very disappointed for how much they charge, will not recommend to anyone who want real japanese food.",

"very moment was amazing! Loved interacting with the chefs at the counter seating.",

"The sirloin was perfection! The man knows his meats!",

"Absolutely fabulous! Great food, great atmosphere.",

"This place was great for a special occasion meal with friends. We sat at the counter and could see the food being prepared in the central area of the restaurant. The menu was diverse and we had quite a few absolutely delicious and innovative dishes. A few were less impressive, unfortunately, but overall it was a great experience. The service was top notch and the restaurant accommodated food preferences (given far in advance) for one person in our party while allowing the rest of us to experience the full, unaltered menu, which was a nice touch.",
]


Review.create(
  user_id: 1,
  restaurant_id: 1,
  rating: 5,
  comment: "Love this place! I've been going for years and always receive great customer service and the sushi is always delicious. It's great bc it's local and fairly priced, so enjoying sushi doesn't always have to be a splurge."
)

12.times do
  Review.create(
    user_id: (1..63).to_a.sample,
    restaurant_id: 1,
    rating: (4..5).to_a.sample,
    comment: commentData.sample
  )
end


105.times do
  Review.create(
    user_id: (1..82).to_a.sample,
    restaurant_id: (1..35).to_a.sample,
    rating: (3..5).to_a.sample,
    comment: commentData.sample
  )
end


180.times do
  Review.create(
    user_id: (1..82).to_a.sample,
    restaurant_id: (1..63).to_a.sample,
    rating: (3..5).to_a.sample,
    comment: commentData.sample
  )
end

10.times do |i|
  Favorite.create(
    user_id: 1,
    restaurant_id: (1..63).to_a[i],
  )
end

10.times do |i|
  Favorite.create(
    user_id: 2,
    restaurant_id: (1..63).to_a[i],
  )
end
