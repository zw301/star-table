import React, { Component } from 'react';
import { Route, Link } from 'react-router-dom';

class UserProfile extends Component {

  constructor(props) {
    super(props);

    // this.scrollTo = this.scrollTo.bind(this);
    // this.upcomingReservations = this.upcomingReservations.bind(this);
    // this.pastReservations = this.pastReservations.bind(this);
    // this.favoriteRestaurants = this.favoriteRestaurants.bind(this);
  }

  // componentDidMount() {
  //   this.props.requestAllRestaurant();
  //   this.props.requestAllReservation();
  // }

  render() {
    let user = this.props.user;
    return (
      <div>
        <h1>{user.firstName}</h1>
        <h1>User profile</h1>
        <h1>User profile</h1>
        <h1>User profile</h1>
        <h1>User profile</h1>
      </div>
    );
  }

}

export default UserProfile;
