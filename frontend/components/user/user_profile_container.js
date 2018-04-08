import { connect } from 'react-redux';
import UserProfile from './user_profile';

import {
  requestUserReservations,
  deleteReservation
} from '../../actions/reservation_actions';


const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  reservations: state.reservations
  // reviews: state.reviews,
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
