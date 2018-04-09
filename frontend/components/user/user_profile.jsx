import React, { Component } from 'react';
import { Link } from 'react-router-dom';

import ReservationIndexItem from '../reservation/reservation_index_item';

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
     el.scrollIntoView();
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
          <section key={`upcoming-${idx}`} className="upcoming-item">
            <section>
              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className='upcoming-res-name-link'
              >
                <section className='upcoming-res-name'>
                  {res.restaurant.name}
                </section>
              </Link>

              <button type="button"
                      onClick={this.deleteReservation(res.id)}
                      className="cancel-reservation">
                      Cancel
              </button>

              <section className='upcoming-res-date'>
                {res.date}
              </section>
              <section className='upcoming-res-time'>
                {res.time}:00
              </section>
              <section className='upcoming-res-seats'>
                Table for {res.seats}
              </section>
            </section>
            <br />
          </section>
        )}
        </div>
      );
    } else {
      return (
        <p>No upcoming reservations</p>
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
          <section key={`past-${idx}`} className="past-item">
            <section>
              <Link
                to={`/restaurants/${res.restaurant.id}`}
                className='past-res-name-link'
              >
                <section className='past-res-name'>
                  {res.restaurant.name}
                </section>
              </Link>
                <section className='past-res-date'>
                  {res.date}
                </section>
                <section className='past-res-time'>
                  {res.time}:00
                </section>
                <section className='past-res-seats'>
                  Table for {res.seats} people
                </section>
            </section>
            <br />
          </section>
        )}
        </div>
      );
    } else {
      return (
        <p>No reservations history</p>
      );
    }
  }



  favoriteRestaurants() {

    return(
      <div>
        favorite restaurants part coming soon
      </div>
    );
  }


  render() {
    const user = this.props.currentUser;
    return (
      <div className='user-profile-main'>
        <nav className='user-profile-nav'>
          <section
            className='user-nav-link'
            onClick={this.scrollTo(this.upcomingSection)}
          >Upcoming Reservations</section>
          <section
            className='user-nav-link'
            onClick={this.scrollTo(this.pastSection)}
          >Past Reservations</section>
          <section
            className='user-nav-link'
            onClick={this.scrollTo(this.pastSection)}
          >Favorite Restaurants</section>
        </nav>
        <hr />

        <div className='user-profile-content'>
          <div className='user-profile-upcoming-reservation'>
            <div>
              <h1>User Info</h1>
              <h1>{user.firstName}</h1>
            </div>
            <hr />

            <div className='user-profile-content-title' name='upcoming'
              ref={ el => this.upcomingSection = el }>
              <h2>Upcoming Reservations</h2>
            </div>
            <div className='user-profile-upcoming-lists' >
              {this.upcomingReservations()}
            </div>
            <hr />


            <div className='user-profile-content-title' name='past'
              ref={ el => this.pastSection = el }>
              <h2>Past Reservations</h2>
            </div>
            <div className='user-profile-past-lists' >
              {this.pastReservations()}
            </div>
            <hr/>

            <div className='user-profile-favorite'>
             <div className='user-profile-content-title' name='favorite'
               ref={ el => this.favoriteSection = el }>
               <h2>Favorite Restaurants</h2>
             </div>
             <div className='user-profile-favorite-lists' >
               {this.favoriteRestaurants()}
             </div>
           </div>
           <hr/>

          </div>
        </div>

      </div>
    );
  }

}

export default UserProfile;
