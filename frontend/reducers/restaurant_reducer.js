import {
  RECEIVE_ALL_RESTAURANTS,
  RECEIVE_SINGLE_RESTAURANT,
  RECEIVE_RESTAURANT_ERRORS,
} from '../actions/restaurant_actions';

import merge from 'lodash/merge';

const restaurantReducer = (state = {}, action) => {
  switch (action.type) {
    case RECEIVE_SINGLE_RESTAURANT:
      return merge({}, state, {[action.restaurant.id]: action.restaurant});
    case RECEIVE_ALL_RESTAURANTS:
      return merge({}, action.restaurants);
    default:
      return state;
  }
};

export default restaurantReducer;
