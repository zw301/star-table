

# StarTable

## Demo
[StarTable Live](https://startable.herokuapp.com/#/)
[StarTable Wiki design document](https://github.com/zw301/starTable/wiki)

StarTable is a full-stack web application inspired by OpenTable. The backend is built on Ruby on Rails with a PostgreSQL database and the frontend consists of a React/Redux architecture.
It features restaurants that users can view, book and review. Users can search for restaurants by location, restaurant name, or cuisines through the search bar or by clicking on a specific image on index page.

![index](http://res.cloudinary.com/chengzii/image/upload/v1523652624/starTable_index.jpg)


##Description
### Search
StarTable makes it easy for users to search Michelin star restaurants to find available reservations. One can search by location, restaurant name, or cuisines.

### Reservations
Reservation form exists inside each restaurant's page. Once user select the time and submit the form, it will hit the database and will be stored in the joint table between users and restaurants with the specific date and time. This allows us to manage and keep track of records. All you favorites restaurants are also listed and can be edited in the profile page.


### Rating, Reviews, Favorites
User can favorite one restaurant and find the favorite restaurants list in their profile page.

StarTable users once logged in can write reviews of restaurants they've booked.
Those rating and reviews are made only by registered users. When unauthorised users try to access, they will be encouraged to sign up or will be redirected to homepage by protected routes.



### Features
- User Authentication
- Login/signup forms displayed in modal windows
- Homes index and show pages
- Search pages using search bar
- Make reservations for restaurants
- View all future reservation and past reservation on user profile page
- Write reviews on restaurant
- Favorite restaurant


### Frameworks, Libraries, Gems and Services
- Rails
- React
- Redux
- jQuery
- Jbuilder
- BCrypt


### Furture additions
- Back to top button in restaurant detail page and user profile page.
- Improve restaurant review form
- Maps: Restaurant show page has interactive map for restaurant
- Image upload: Restaurant profile picture upload
