
import { connect } from 'react-redux';
import UserProfile from './user_profile';

import { requestAllRestaurants } from '../../actions/restaurant_actions';
import { requestAllReservations } from '../../actions/reservation_actions';


const mapStateToProps = (state) => ({
  user: state.session.currentUser,
  restaurants: state.restaurants,
  reservations: state.reservations,
  // reviews: state.reviews,
  // favorite: state.favorite
});

const mapDispatchToProps = (dispatch) => ({
  requestAllRestaurants: () => dispatch(requestAllRestaurants()),
  requestAllReservations: () => dispatch(requestAllReservations()),
  // createReview: (review) => dispatch(createReview()),
  // requestAllFavorite: () => dispatch(requestAllFavorite())
  // addFavorite: (favorite) => dispatch(addFavorite()),
  // removeFavorite: (favorite) => dispatch(removeFavorite(favorite))

  // requestSingleRestaurant: (id) => dispatch(requestSingleRestaurant(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
