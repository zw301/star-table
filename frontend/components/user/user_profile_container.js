import { connect } from 'react-redux';
import UserProfile from './user_profile';

import {
  requestUserReservations,
  deleteReservation
} from '../../actions/reservation_actions';

import {requestUserReviews} from '../../actions/review_actions';

/* in Selector

  function upcoming(reservations) {
    ... returns array
  }

  function past(reservations) {
    ... returns array
  }

*/
const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  reservations: state.entities.reservations,
  // upcoming: upcoming(state.entities.reservations),
  // past: past(state.entities.reservations),
  // reviews: state.entities.reviews,
  // restaurants:
  // favorite: state.favorite
});

const mapDispatchToProps = (dispatch) => ({
  requestUserReservations: userId => dispatch(requestUserReservations(userId)),
  deleteReservation: reservationId => dispatch(deleteReservation(reservationId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserProfile);
