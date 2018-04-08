import React, { Component } from 'react';
import { Link } from 'react-router-dom';

import ReservationIndexItem from '../reservation/reservation_index_item';
// import RestaurantIndexItem from '../restaurant/restaurant_index_item';

class UserProfile extends Component {

  constructor(props) {
    super(props);
    // this.scrollTo = this.scrollTo.bind(this);
    // this.upcomingReservations = this.upcomingReservations.bind(this);
    // this.pastReservations = this.pastReservations.bind(this);
    // this.favoriteRestaurants = this.favoriteRestaurants.bind(this);
  }


  // componentDidMount() {
  //   this.props.requestAllRestaurants();
  //   this.props.requestAllReservations();
  // }

  // componentWillMount(){
  //   if(this.props.currentUser){
  //     this.props.requestUserReservations(this.props.currentUser.id);
  //     this.props.requestUserReviews(this.props.currentUser.id);
  //   }
  // }



  render() {
    let user = this.props.currentUser;
    return (
      <div>
        <div>
          <h1>User Info</h1>
          <h1>{user.firstName}</h1>
        </div>
        <br />

        <div>
          <h1>Reservation</h1>
        </div>
        <br />

        <div>
          <h1>Your Reviews</h1>
        </div>
        <br />

        <div>
          <h1>Favorite Restaurants</h1>
        </div>


      </div>
    );
  }

}

export default UserProfile;
