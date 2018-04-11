import React, { Component } from 'react';
import { Link } from 'react-router-dom';

// import ReservationIndexItem from '../reservation/reservation_index_item';

class UserProfile extends Component {

  constructor(props) {
    super(props);

    this.scrollTo = this.scrollTo.bind(this);
    this.upcomingReservations = this.upcomingReservations.bind(this);
    this.pastReservations = this.pastReservations.bind(this);
    // this.favoriteRestaurants = this.favoriteRestaurants.bind(this);
  }


  componentDidMount() {
    this.props.requestUserReservations(this.props.currentUser.id);
  }

  deleteReservation(idx){
    return (e) => {
     e.preventDefault();
     this.props.deleteReservation(idx);
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
      if(Date.parse(today.slice(0, 10)) < Date.parse(reservation.date)) {
        upcoming.push(reservation);
      }
    });

    if(upcoming.length > 0) {
      return(
        <div>
        {upcoming.map((res, idx) =>
          <section key={`upcoming-${idx}`} className="reservation-list">
            <div className="restaurant-logo-container">
              <img src="https://image.freepik.com/free-vector/restaurant-logo-template_1236-155.jpg"/>
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
                Table for {res.seats}
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
      if(Date.parse(today.slice(0, 10)) >= Date.parse(reservation.date)) {
        past.push(reservation);
      }
    });

    if(past.length > 0) {
      return(
        <div>
        {past.map((res, idx) =>
          <section key={`past-${idx}`} className="reservation-list">
            <div className="restaurant-logo-container">
              <img src="https://image.freepik.com/free-vector/restaurant-logo-template_1236-155.jpg"/>
            </div>
            <div className="restaurant-detail-container">
              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className="restaurant-name">
                  {res.restaurant.name}
              </Link>
              <div className='past-res-date'>
                {res.date}
              </div>
              <div className='past-res-time'>
                {res.time}:00
              </div>
              <div className='past-res-seats'>
                Table for {res.seats} people
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
    return(
      <div className="no-reservation">
        favorite restaurants part coming soon
      </div>
    );
  }


  render() {
    const user = this.props.currentUser;
    return (
      <section className='user-profile-main'>
        <div className="user-profile">
          <h3>{user.firstName} {user.lastName}</h3>
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
