import React from 'react';
import { Route, withRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../../util/route_util';

import
  ReservationFormContainer
from '../reservation/reservation_form_container';

import
  ReviewFormContainer
from '../review/review_form_container';

import
  ReviewIndexContainer
from '../review/review_index_container';



class RestaurantDetail extends React.Component {
  constructor(props) {
    super(props);
    this.scrollTo = this.scrollTo.bind(this);
    // this.reviewFromChecker = this.reviewFromChecker.bind(this);

    this.getAveRating = this.getAveRating.bind(this);
  }

  // componentWillReceiveProps(nextProps) {
  //   if (this.props.match.params.restaurantId !== nextProps.match.params.restaurantId) {
  //     this.props.requestSingleRestaurant(nextProps.match.params.restaurantId);
  //   }
  // }

  componentDidMount() {
    this.props.requestSingleRestaurant(this.props.match.params.restaurantId);
  }

  scrollTo(el) {
    el.scrollIntoView({ behavior: 'smooth' });
  }

  reservationFormChecker() {
    if(this.props.currentUser) {
      return (
        <Route
          path={`/restaurants/:restaurantId`}
          component={ReservationFormContainer}
        />
      );
    } else {
      return (
        <div>
          <Route
            path={`/restaurants/:restaurantId`}
            component={ReservationFormContainer}
          />
        </div>
      );
    }
  }


  reviewFromChecker() {
    if(!this.props.currentUser) { return null; }

    const reservationUserIds = this.props.restaurant.reservationUserIds;
    const currentUser = this.props.currentUser;
    if(reservationUserIds.includes(currentUser.id)) {
      return (

        <Route path={'/restaurants/:restaurantId'}
            component={ReviewFormContainer} />

      );
    }
  }


  getStar() {
    let starCount = this.props.restaurant.star;
    const stars = [];

    for (let i = 0; i < starCount; i++) {
      stars.push(
        <img
          key={(""+Math.random()).substring(2,7)}
          src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
      );
    }
    return stars;
  }

  getAveRating(){
    const restaurant = this.props.restaurant;
    let sum = 0;
    for (var i = 0; i < restaurant.ratingArr.length; i++) {
      sum += restaurant.ratingArr[i];
    }

    let aveRating;
    if (sum === 0) {
      aveRating = "No rating yet!";
    } else {
      aveRating = (Math.round(sum / restaurant.ratingArr.length * 10) / 10).toFixed(1);
    }

    return aveRating;
  }

  getRate() {
    const restaurant = this.props.restaurant;
    let sum = 0;
    for (var i = 0; i < restaurant.ratingArr.length; i++) {
      sum += restaurant.ratingArr[i];
    }

    let aveRating;
    if (sum === 0) {
      aveRating = 0;
    } else {
      aveRating = Math.floor((sum / restaurant.ratingArr.length * 10) / 10);
    }

    const rateArr = [];

    for (var i = 0; i < aveRating; i++) {
      rateArr.push (
        <img
          key={(""+Math.random()).substring(2,7)}
          src="http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523511580/rating_icon_full.png"
          />
      );
    }

    for (var i = aveRating; i < 5 ; i++) {
      rateArr.push (
        <img
          key={(""+Math.random()).substring(2,7)}
          src="http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523511580/rating_icon_empty.png"
          />
      );
    }
    return rateArr;
  }


  render() {
    if (!this.props.restaurant) return null;
    const restaurant = this.props.restaurant;

    return (
      <div className='restaurant-showpage'>
        <div className='restaurant-showpage-header'>
            <img
              className='showpage-header-img'
              src="http://res.cloudinary.com/chengzii/image/upload/v1523493008/default_restaurant_img.jpg" />
        </div>
        <div className="restaurant-main-container">
          <div className='restaurant-main-left'>
            <nav className='nav-link-wrapper'>
              <a className='page-nav-link' onClick={() => this.scrollTo(this.aboutSection)}>About</a>
              <a className='page-nav-link' onClick={() => this.scrollTo(this.reviewsSection)}>Reviews</a>
            </nav>

            <section className='restaurant-nav-info'>
              <div className='restaurant-nav-name'>
                <h1>{restaurant.name}</h1>
                <span className="restaurant-star">{this.getStar()}</span>
              </div>
              <div className="restaurant-nav-favorite btn-demo">
                Save to Favorites
              </div>
              <div className='restaurant-nav-detail'>
                <span>{this.getRate()}</span>
                <div className='rating_icon'>{this.getAveRating()}</div>
                <div>{restaurant.countReview} reviews</div>
                <div>{restaurant.cuisine} </div>
              </div>
            </section>



            <div className='restaurant-showpage-main'>

              <div ref={ el => { this.aboutSection = el;} } className='restaurant-content-about' id='about'>
                    <p className="restaurant-description">{restaurant.description}</p>
                    <p>Cusines: {restaurant.cuisine}</p>
                    <p>Phone number: {restaurant.phoneNumber}</p>
                    <p>Hours of operation: {restaurant.openTime} - {restaurant.closeTime}</p>
                    <p>Address: {restaurant.address},{restaurant.city} {restaurant.state} {restaurant.zipcode}</p>
              </div>

              <div
                ref={ el => { this.reviewsSection = el;} }
                className='restaurant-reviews'
                name='reviews'>
                  <h5>What {this.props.restaurant.ratingArr.length} People Are Saying</h5>
                  <Route path={'/restaurants/:restaurantId'}
                    component={ReviewIndexContainer} />
              </div>

            </div>
          </div>
          <aside className="restaurant-main-right">
            <div
              name='reservation'
              className='restaurant-reservation'>
                {this.reservationFormChecker()}
            </div>

            {this.reviewFromChecker()}
          </aside>
        </div>
      </div>
    );
  }
}

export default withRouter(RestaurantDetail);
