import React from 'react';
import { Route, withRouter } from 'react-router-dom';
import
  ReservationFormContainer
from '../reservation/reservation_form_container';

class RestaurantDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestSingleRestaurant(this.props.match.params.restaurantId);
  }

  // componentWillReceiveProps(nextProps) {
  //   if (this.props.match.params.restaurantId !== nextProps.match.params.restaurantId) {
  //     this.props.requestSingleRestaurant(nextProps.match.params.restaurantId);
  //   }
  // }


  render() {
    if (!this.props.restaurant) return null;

    const restaurant = this.props.restaurant;

    return (
      <div>
        <div>Make a reservation
          <Route
              path={`/restaurants/:restaurantId`}
              component={ReservationFormContainer}
          />
        </div>
        <h1>{restaurant.name}</h1>
        <div>Review-rating</div>
        <h1>Detail</h1>
        <div>save to favorites</div>
        <div>
          <span>Detail(style later)</span>
          <p>{restaurant.cusine}</p>
          <p>{restaurant.phoneNumber}</p>
          <p>Hours of operation:{restaurant.openTime} - {restaurant.closeTime}</p>
          <p>Address {restaurant.address},{restaurant.city} {restaurant.state} {restaurant.zipcode}</p>
          <p>{restaurant.description}</p>
        </div>
        <ul>Reviews</ul>
      </div>
    );
  }
}

export default withRouter(RestaurantDetail);
