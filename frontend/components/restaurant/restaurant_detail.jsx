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
          <div>Please Log In to make a reservation!</div>
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
        <div>
          Write Reviews
          <Route path={'/restaurants/:restaurantId'}
              component={ReviewFormContainer} />
        </div>
      );
    }
  }


  getStar() {
      let starCount = this.props.restaurant.star;
      if (starCount === 3) {
        return(
          <div className="restaurant-star">
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
          </div>
        );
      } else if(starCount === 2) {
        return(
          <div className="restaurant-star">
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
          </div>
        );
      } else {
        return(
          <div className="restaurant-star">
            <img src='http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
          </div>
        );
      }
    }


  render() {
    if (!this.props.restaurant) return null;

    const restaurant = this.props.restaurant;
    let sum = 0;
    for (var i = 0; i < restaurant.ratingArr.length; i++) {
      sum += restaurant.ratingArr[i];
    }

    let aveRating;
    if (sum === 0) {
      aveRating = "No rating yet!";
    } else {
      aveRating = Math.round(sum / restaurant.ratingArr.length * 10) / 10;
    }


    return (
      <div className='restaurant-showpage'>
        <div className='restaurant-showpage-header'>
          <div className='showpage-header-img'>
            showpage-header-image
          </div>
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
                <span>{this.getStar()}</span>
              </div>
              <div className="restaurant-nav-favorite btn-demo">
                Add to Favorites
              </div>
              <div className='restaurant-nav-detail'>
                <div>Rating: {aveRating}</div>
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

            <div className='restaurant-write-reviews'>
                {this.reviewFromChecker()}
            </div>
          </aside>
        </div>
      </div>
    );
  }
}

export default withRouter(RestaurantDetail);
