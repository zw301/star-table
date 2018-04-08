import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import ReservationRequestFrom from './reservation_request';
import {
  requestAllRestaurant,
  requestSingleRestaurant
} from '../../actions/restaurant_actions';
import { signin, signup } from '../../actions/session_actions';
import { createReservation, requestAllReservation, requestSingleReservation } from '../../actions/reservation_actions';

const mapStateToProps = (state) => ({
  currentUser: state.currentUser,
  restaurant: state.restaurant,
  restaurants: state.restaurants,
  // errors: state.errors,
  reservation: state.reservation,
  reservations: state.reservations
});

const mapDispatchToProps = (dispatch) => ({
  createReservation: (res) => dispatch(createReservation(res)),
  requestAllReservation: () => dispatch(requestAllReservation()),
  requestSingleReservation: (id) => dispatch(requestSingleReservation()),

  requestAllRestaurant: () => dispatch(requestAllRestaurant()),
  requestSingleRestaurant: (id) => dispatch(requestSingleRestaurant(id)),
  // signin: (user) => dispatch(signin(user)),
  // signup: (user) => dispatch(signup(user))
});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(ReservationRequestFrom));
