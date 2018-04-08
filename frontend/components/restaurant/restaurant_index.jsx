import React from 'react';
import { Route, Link, withRouter } from 'react-router-dom';
import SearchFormContainer from '../search/search_form_container';


class RestaurantIndex extends React.Component {

  // componentWillMount() {
  //   this.props.requestAllRestaurants();
  // }

  render() {
    let restaurants = this.props.restaurants.map((restaurant, index) => {
      return (
        <li key={index}>
          <Link to={`/restaurants/${restaurant.id}`}>
            <h3>{restaurant.name}</h3>
          </Link>
          <ul>
            <li>Cuisine: {restaurant.cuisine}</li>
            <li>Address: {restaurant.address}, {restaurant.city}, {restaurant.state}, {restaurant.zipcode}</li>
            <li>Contact: {restaurant.phoneNumber}</li>
            <li><img src="https://image.freepik.com/free-vector/restaurant-logo-template_1236-155.jpg" height='150px' width='150px'/></li>
          </ul>
        </li>
      );
    });
    if(restaurants.length === 0) {
      restaurants = (
        <div>
          <p>WE DID NOT FIND A MATCH FOR YOUR SEARCH.</p>
          <p>Sorry, we couldn't find any results.
          Try checking your spelling or using less specific keywords.</p>
        </div>
      );
    }
    return (
      <div>
        <div id="navbar-hero">
          <img className="hero-img" src="http://res.cloudinary.com/chengzii/image/upload/v1523146895/restaurant_index.jpg" />
          <SearchFormContainer />
        </div>
        <ul className='restaurant-list'>
          {restaurants}
        </ul>
      </div>
    );
  }
}

export default RestaurantIndex;
