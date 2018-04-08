import {connect} from 'react-redux';

import ReservationIndex from './reservation_index';

import { requestUserReservations } from '../../actions/reservation_actions';


const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  reservations: Object.values(state.entities.reservations)
});

const mapDispatchToProps = dispatch => ({
  requestUserReservations: () => dispatch(requestUserReservations()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReservationIndex);
