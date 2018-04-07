import React from 'react';
import { Route, Link, withRouter } from 'react-router-dom';


class RestaurantIndex extends React.Component {

  componentWillMount() {
    this.props.requestAllRestaurants();
  }



  render() {
    const restaurants = this.props.restaurants.map((restaurant, index) => {
      return (
        <li key={index}>
          <Link to={`/restaurants/${restaurant.id}`}>
            <h3>{restaurant.name}</h3>
          </Link>
          <ul>
            <li>Cuisine: {restaurant.cuisine}</li>
            <li><img src="https://image.freepik.com/free-vector/restaurant-logo-template_1236-155.jpg" height='150px' width='150px'/></li>
          </ul>
        </li>
      );
    });
    return (
      <div>
        <ul className='restaurant-list'>
          {restaurants}
        </ul>
      </div>
    );
  }
}

export default RestaurantIndex;
