
import { connect } from 'react-redux';
import UserProfile from './user_profile';

import { requestAllRestaurant } from '../../actions/restaurant_actions';

const mapStateToProps = (state) => ({
  user: state.session.currentUser,
  // restaurants: state.restaurants,
  // reservations: state.reservations,
  // reviews: state.reviews,
  // favorite: state.favorite
});

const mapDispatchToProps = (dispatch) => ({
  // requestAllReservation: () => dispatch(requestAllReservation()),
  requestAllRestaurant: () => dispatch(requestAllRestaurant()),
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
