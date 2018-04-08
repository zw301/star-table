import {connect} from 'react-redux';
import {
  createReservation,
  updateReservation,
  deleteReservation,
  receiveReservationErrors
} from '../../actions/reservation_actions';

import ReservationForm from './reservation_form';

//TODO: take out restaurants later if it's not used
const mapStateToProps = ({restaurants, session, errors}) => {
  return {
    currentUser: session.currentUser,
    restaurants: restaurants,
    errors: errors.reservations
  };
};

const mapDispatchToProps = dispatch => ({
  createReservation: reservation => dispatch(createReservation(reservation)),
  clearReservationErrors: () => dispatch(receiveReservationErrors([]))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReservationForm);
