import { merge } from 'lodash';
import {
  RECEIVE_ALL_RESERVATION,
  RECEIVE_SINGLE_RESERVATION,
  DESTROY_RESERVATION,
} from '../actions/reservation_actions';


const ReservationsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_RESERVATION:
      return action.reservations;
    case RECEIVE_SINGLE_RESERVATION:
      const reservation = action.reservation;
      return merge({}, state, {[reservation.id]: reservation});
    case DESTROY_RESERVATION:
      let newState = merge({}, state);
      delete newState[action.reservationId];
      return newState;
    default:
      return state;
  }
};

export default ReservationsReducer;
