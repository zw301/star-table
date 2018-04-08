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
  //   this.props.requestUserReservations(this.props.currentUser.id);
  // }
  componentDidMount() {
    this.props.requestUserReservations(this.props.currentUser.id);
  }


  // componentWillMount(){
  //   if(this.props.currentUser){
  //     this.props.requestUserReservations(this.props.currentUser.id);
  //   }
  // }

  deleteReservation(idx){
    return (e) => {
     e.preventDefault();
     this.props.deleteReservation(idx);
    };
  }

  reservationIndex(){
    return Object.keys(this.props.reservations).map(idx => (
      <div className="profile-reservations">
        <div className="profile-reservations-top">
          <Link
            key={idx}
            to={`/restaurants/${this.props.reservations[idx].restaurant.id}`}
            className="reservation-index-item-link">
            <p>{this.props.reservations[idx].restaurant.name}</p>
          </Link>
          <button type="button"
                  onClick={this.deleteReservation(idx)}
                  className="cancel-reservation">
                  Cancel
          </button>
        </div>
        <ReservationIndexItem
          key={idx}
          reservation={this.props.reservations[idx]} />
        <br />
      </div>
    ));
  }

  reservationChecker(){
    let reservations = this.reservationIndex();
    if (reservations.length > 0){
      return reservations;
    }else{
      return(
        <p>No reservations</p>
      );
    }
  }

  render() {
    const user = this.props.currentUser;
    return (
      <div>
        <div>
          <h1>User Info</h1>
          <h1>{user.firstName}</h1>
        </div>
        <hr />

        <div>
          <h1>Reservation</h1>
          <br />
          {this.reservationChecker()}
        </div>
        <hr />

        <div>
          <h1>Your Reviews</h1>
        </div>
        <hr />

        <div>
          <h1>Favorite Restaurants</h1>
        </div>


      </div>
    );
  }

}

export default UserProfile;
