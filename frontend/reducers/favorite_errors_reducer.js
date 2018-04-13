import {
  RECEIVE_FAVORITE_ERRORS,
} from '../actions/favorite_actions';
import merge from 'lodash/merge';


export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_FAVORITE_ERRORS:
      return action.errors;
    default:
      return state;
  }
};
