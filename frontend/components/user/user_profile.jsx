import { connect } from 'react-redux';
import UserProfile from './user_profile';
import { requestAllReservation } from '../../actions/reservation_actions';
import { requestAllRestaurant } from '../../actions/restaurant_actions';
import { createReview } from '../../actions/review_actions';
import { addFavorite, removeFavorite, requestAllFavorite } from '../../actions/favorite_actions';

const mapStateToProps = (state) => ({
  currentUser: state.currentUser,
  restaurants: state.restaurants,
  // reservations: state.reservations,
  // reviews: state.reviews,
  // favorite: state.favorite
});

const mapDispatchToProps = (dispatch) => ({
  requestAllReservation: () => dispatch(requestAllReservation()),
  requestAllRestaurant: () => dispatch(requestAllRestaurant()),
  createReview: (review) => dispatch(createReview()),
  // requestAllFavorite: () => dispatch(requestAllFavorite())
  // addFavorite: (favorite) => dispatch(addFavorite()),
  removeFavorite: (favorite) => dispatch(removeFavorite(favorite))

  // requestSingleRestaurant: (id) => dispatch(requestSingleRestaurant(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
