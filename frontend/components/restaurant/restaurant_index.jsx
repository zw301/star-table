import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class RestaurantIndex extends React.Component {

  componentDidMount() {
    this.props.requestAllRestaurants();
  }


  render() {
    const restaurants = this.props.restaurants.map((restaurant, index) => {
      return (
        <li key={index}>
          <Link to={`/restaurant/${restaurant.id}`}>
            <h3>{restaurant.name}</h3>
          </Link>
          <ul>
          <li>{restaurant.star}</li>
          <li>{restaurant.cuisine}</li>
          <li>{restaurant.address}</li>
          <li>{restaurant.city}</li>
          <li>{restaurant.state}</li>
          <li>{restaurant.zipcode}</li>
          <li>{restaurant.phoneNumber}</li>
          <li>{restaurant.openTime}</li>
          <li>{restaurant.closeTime}</li>
          <li><img src="https://cdn.vectorstock.com/i/1000x1000/06/25/restaurant-lable-food-service-logo-vector-10360625.jpg" height='150px' width='150px'/></li>
          </ul>
          <hr />
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
