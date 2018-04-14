

# StarTable

[StarTable Live](https://startable.herokuapp.com/#/)

StarTable is a full-stack web application inspired by OpenTable. The backend is built on Ruby on Rails with a PostgreSQL database and the frontend consists of a React/Redux architecture.
It features restaurants that users can view, book and review. Users can search for restaurants by location, restaurant name, or cuisines through the search bar or by clicking on a specific image on index page. The city image are responsive design.

![index](http://res.cloudinary.com/chengzii/image/upload/v1523652624/starTable_index.jpg)




## Description
### Search
StarTable makes it easy for users to search Michelin star restaurants to find available reservations. One can search by location, restaurant name, or cuisines.
![index](http://res.cloudinary.com/chengzii/image/upload/v1523658252/starTable_search.jpg)




### Reservations
Reservation form exists inside each restaurant's page. Once user select the time and submit the form, it will hit the database and will be stored in the joint table between users and restaurants with the specific date and time. This allows us to manage and keep track of records. All you favorites restaurants are also listed and can be edited in the profile page.
![index](http://res.cloudinary.com/chengzii/image/upload/v1523658110/starTable_reservation.jpg)




### Rating, Reviews, Favorites
User can favorite one restaurant and find the favorite restaurants list in their profile page.

StarTable users once logged in can write reviews of restaurants they've booked.
Those rating and reviews are made only by registered users. When unauthorised users try to access, they will be encouraged to sign up or will be redirected to homepage by protected routes.

![index](http://res.cloudinary.com/chengzii/image/upload/v1523658106/starTable_comment.jpg)

To get hover star in the review
```JS  
 updateRating(updatedRating){
    return (e) => this.setState({rating: updatedRating});
  }
  handleHover(i){
   return () => this.setState({hover: true, hoverV: i});
  }

   handleHoverLeave(){
     this.setState({hover: false});
  }  

  ratingStars(){
    let starArr = [];

    for (let i = 1; i < 6; i++) {
      let id, maxRating;
      maxRating = this.state.hover ? this.state.hoverV: this.state.rating;
      if (i <= maxRating) id ="full";

      starArr.push(
        <i
          key={i}
          className="fa fa-star"
          id={id}
          onMouseEnter={this.handleHover(i)}
          onMouseLeave={this.handleHoverLeave}
          aria-hidden="true"
          onClick={this.updateRating(i)}>
        </i>);
    }

    return starArr;
  }

```




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


### Additional Resources
- [Database Schema](https://github.com/zw301/fullstack/wiki/Database-Schema)
- [API Endpoints](https://github.com/zw301/starTable/wiki/Routes)
- [Design Wireframes](https://github.com/zw301/starTable/wiki/Wireframes)
- [Sample Redux State](https://github.com/zw301/starTable/wiki/Sample-State)
