import {
  RECEIVE_ALL_RESERVATION,
  RECEIVE_SINGLE_RESERVATION,
  RECEIVE_RESERVATION_ERRORS,
} from '../actions/reservation_actions';
import merge from 'lodash/merge';


export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_RESERVATION:
    case RECEIVE_SINGLE_RESERVATION:
      return [];
    case RECEIVE_RESERVATION_ERRORS:
      return action.errors;
    default:
      return state;
  }
};
