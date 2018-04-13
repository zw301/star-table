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

60.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
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
  logo: "http://res.cloudinary.com/chengzii/image/upload/v1523493767/masa_logo.jpg"
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
  description: "Per Se offers two prix fixe tasting menus a Tasting of Vegetables or the Chef’s Tasting Menu, which changes daily.",
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


6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Chicago",
    state: "IL",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "10:00:00",
    close_time: "18:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Los Angeles",
    state: "CA",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "16:00:00",
    close_time: "22:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Washington",
    state: "DC",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "12:00:00",
    close_time: "24:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end

6.times do
  Restaurant.create(
    owner_id:  (1..10).to_a.sample,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    star: [1,2,3].sample,
    city: "Seattle",
    state: "WA",
    zipcode: Faker::Address.zip_code,
    phone_number: Faker::PhoneNumber.phone_number.delete("(").delete(")").slice(0,12),
    open_time: "08:00:00",
    close_time: "20:00:00",
    cuisine: Faker::Address.country,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  )
end


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
  time: "6",
  date: "2018-04-01",
  seats: 2
)

Reservation.create(
  user_id: 1,
  restaurant_id: 2,
  time: "7",
  date: "2018-04-07",
  seats: 1
)

8.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

8.times do
  Reservation.create(
    user_id: 1,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

5.times do
  Reservation.create(
    user_id: 2,
    restaurant_id: (1..12).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (2..8).to_a.sample
  )
end

60.times do
  Reservation.create(
    user_id: (1..63).to_a.sample,
    restaurant_id: (1..47).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.ago.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end

30.times do
  Reservation.create(
    user_id: (1..63).to_a.sample,
    restaurant_id: (1..47).to_a.sample,
    time: ("5".."10").to_a.sample,
    date: rand(30.days).seconds.from_now.to_s.split(" ").first,
    seats: (1..6).to_a.sample
  )
end


Review.create(
  user_id: 1,
  restaurant_id: 1,
  rating: 5,
  comment: "Love this place! I've been going for years and always receive great customer service and the sushi is always delicious. It's great bc it's local and fairly priced, so enjoying sushi doesn't always have to be a splurge."
)

200.times do
  Review.create(
    user_id: (1..63).to_a.sample,
    restaurant_id: (1..47).to_a.sample,
    rating: (3..5).to_a.sample,
    comment:Faker::Lovecraft.paragraph
  )
end

10.times do |i|
  Favorite.create(
    user_id: 1,
    restaurant_id: (1..47).to_a[i],
  )
end

10.times do |i|
  Favorite.create(
    user_id: 2,
    restaurant_id: (1..47).to_a[i],
  )
end
