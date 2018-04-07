import React, { Component } from 'react';
import { Route, Link } from 'react-router-dom';

class UserProfile extends Component {

  constructor(props) {
    super(props);

    this.scrollTo = this.scrollTo.bind(this);
    this.upcomingReservations = this.upcomingReservations.bind(this);
    this.pastReservations = this.pastReservations.bind(this);
    this.favoriteRestaurants = this.favoriteRestaurants.bind(this);
  }

  // componentDidMount() {
  //   this.props.requestAllRestaurant();
  //   this.props.requestAllReservation();
  // }


}
