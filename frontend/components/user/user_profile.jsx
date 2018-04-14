import React, { Component } from 'react';
import { Link } from 'react-router-dom';

// import ReservationIndexItem from '../reservation/reservation_index_item';

class UserProfile extends Component {

  constructor(props) {
    super(props);

    this.scrollTo = this.scrollTo.bind(this);
    this.upcomingReservations = this.upcomingReservations.bind(this);
    this.pastReservations = this.pastReservations.bind(this);
    this.favoriteRestaurants = this.favoriteRestaurants.bind(this);

    this.deleteReservation = this.deleteReservation.bind(this);
  }


  componentDidMount() {
    this.props.requestUserReservations(this.props.currentUser.id);
    this.props.requestUserFavorites(this.props.currentUser.id);
  }

  deleteReservation(id){
    return (e) => {
     e.preventDefault();

     this.props.deleteReservation(id);
    };
  }


  scrollTo(el) {
    return () => {
    el.scrollIntoView({ behavior: 'smooth' });
    };
  }

  upcomingReservations() {
    const upcoming = [];
    const today = new Date().toJSON();

    const allRes = Object.values(this.props.reservations);
    allRes.forEach((reservation) => {
      if(Date.parse(today.slice(0, 10)) <= Date.parse(reservation.date)) {
        upcoming.push(reservation);
      }
    });

    if(upcoming.length > 0) {
      return(
        <div>
        {upcoming.map((res, idx) =>
          <section key={`upcoming-${idx}`} className="reservation-list">
            <div className="restaurant-logo-container">
              <img
                className="restaurant-logo"
                src={res.restaurant.logo}/>
            </div>
            <div className="restaurant-detail-container">
              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className="restaurant-name">
                  {res.restaurant.name}
              </Link>


              <div className='upcoming-res-date'>
                {res.date}
              </div>
              <div className='upcoming-res-time'>
                {res.time}:00
              </div>
              <div className='upcoming-res-seats'>
                Table for {res.seats} {res.seats === 1 ? "person" : "people"}
              </div>

              <button type="button"
                      onClick={this.deleteReservation(res.id)}
                      className="btn btn-demo reservation-btn">
                      Cancel
              </button>
            </div>
          </section>
        )}
        </div>
      );
    } else {
      return (
        <p className="no-reservation">No upcoming reservations</p>
      );
    }
  }

  pastReservations() {
    const past = [];
    const today = new Date().toJSON();

    const allRes = Object.values(this.props.reservations);
    allRes.forEach((reservation) => {
      if(Date.parse(today.slice(0, 10)) > Date.parse(reservation.date)) {
        past.push(reservation);
      }
    });

    if(past.length > 0) {
      return(
        <div>
        {past.map((res, idx) =>
          <section key={`past-${idx}`} className="reservation-list">
            <div className="restaurant-logo-container">
              <img
                className="restaurant-logo"
                src={res.restaurant.logo}/>
            </div>
            <div className="restaurant-detail-container past-res">
              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className="restaurant-name">
                  {res.restaurant.name}
              </Link>
              <div>
                {res.date}
              </div>
              <div>
                {res.time}:00
              </div>
              <div>
                Table for {res.seats} {res.seats === 1 ? "person" : "people"}
              </div>

              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className="btn btn-demo reservation-btn review-btn">
                Write Review
              </Link>
            </div>
          </section>
        )}
        </div>
      );
    } else {
      return (
        <p className="no-reservation">No reservations history</p>
      );
    }
  }



  favoriteRestaurants() {
    let favorites = this.props.favorites;
    if (Object.keys(favorites).length === 0 ) {
      return (
        <p className="no-reservation">No favorite</p>
      );
    } else {
      return(
        <div>
        { Object.values(favorites).map((fav, idx) =>
          <section key={`favorite-${idx}`} className="reservation-list">
            <div className="restaurant-logo-container">
              <img
                className="restaurant-logo"
                src={fav.restaurant.logo}/>
            </div>
            <div className="restaurant-detail-container res-fav">
              <Link
                to={`/restaurants/${fav.restaurant.id}`}
                className="restaurant-name">
                  {fav.restaurant.name}  <i className="fas fa-heart"></i>
              </Link>

              <div className='past-res-date'>
                Michelin Star Level: {fav.restaurant.star}
              </div>
              <div className='past-res-time'>
                Cuisine: {fav.restaurant.cuisine}
              </div>
              <div className='past-res-time'>
                Contact: {fav.restaurant.phone_number}
              </div>

              <Link
                to={`/restaurants/${fav.restaurant.id}`}
                className="btn btn-demo reservation-btn review-btn">
                Reserve Now
              </Link>

            </div>
          </section>
        )}
        </div>
      );
    }

  }


  render() {
    const user = this.props.currentUser;
    return (
      <section className='user-profile-main'>
        <div className="user-profile">
          <h3>{user.firstName} {user.lastName === "." ? "" : user.lastName}</h3>
        </div>

        <div className='user-profile-body'>
          <aside className='user-profile-side'>
            <div
              className='user-nav-link'
              onClick={this.scrollTo(this.upcomingSection)}
            >Upcoming Reservations</div>
            <div
              className='user-nav-link'
              onClick={this.scrollTo(this.pastSection)}
            >Past Reservations</div>
            <div
              className='user-nav-link'
              onClick={this.scrollTo(this.favoriteSection)}
            >Favorite Restaurants</div>
          </aside>

          <section className='user-profile-content'>
            <div className='user-profile-section'>
              <div className='user-profile-content-title' name='upcoming'
                ref={ el => this.upcomingSection = el }>
                <h2>Upcoming Reservations</h2>
              </div>
              <div className='user-profile-section-lists' >
                {this.upcomingReservations()}
              </div>
            </div>

            <div className='user-profile-section'>
              <div className='user-profile-content-title' name='past'
                ref={ el => this.pastSection = el }>
                <h2>Past Reservations</h2>
              </div>
              <div className='user-profile-section-lists' >
                {this.pastReservations()}
              </div>
            </div>


            <div className='user-profile-section'>
              <div className='user-profile-content-title' name='favorite'
                  ref={ el => this.favoriteSection = el }>
                  <h2>Favorite Restaurants</h2>
              </div>
              <div className='user-profile-section-lists' >
                {this.favoriteRestaurants()}
              </div>
            </div>

          </section>
        </div>
      </section>
    );
  }

}

export default UserProfile;
