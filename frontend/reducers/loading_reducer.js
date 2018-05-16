import {
  RECEIVE_SINGLE_RESTAURANT,
  RECEIVE_RESTAURANT_ERRORS,
  RECEIVE_ALL_RESTAURANTS,
  LOADING_RESTAURANT,
  LOADING_RESTAURANTS
} from "../actions/restaurant_actions";
import { merge } from "lodash";


const initialState = {
  indexLoading: false,
  showLoading: false
};

export default (state = initialState, action) => {
  Object.freeze(state);
  switch(action.type) {
    case LOADING_RESTAURANT:
      return merge({}, state, { showLoading: true });
    case LOADING_RESTAURANTS:
      return merge({}, state, { indexLoading: true });
    case RECEIVE_SINGLE_RESTAURANT:
      return merge({}, state, { showLoading: false });
    case RECEIVE_ALL_RESTAURANTS:
      return merge({}, state, { indexLoading: false});
    case RECEIVE_RESTAURANT_ERRORS:
      return merge({}, state, { showLoading: false, indexLoading: false});
    default:
      return state;
  }
};
