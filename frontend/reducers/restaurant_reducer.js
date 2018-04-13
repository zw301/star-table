import {
  RECEIVE_ALL_RESTAURANTS,
  RECEIVE_SINGLE_RESTAURANT,
  RECEIVE_RESTAURANT_ERRORS,
} from '../actions/restaurant_actions';

import {
  RECEIVE_SINGLE_FAVORITE,
  DESTROY_FAVORITE,
} from '../actions/favorite_actions';

import merge from 'lodash/merge';

const restaurantReducer = (state = {}, action) => {
  let favorite;
  switch (action.type) {
    case RECEIVE_SINGLE_RESTAURANT:
      return merge({}, state, {[action.restaurant.id]: action.restaurant});
    case RECEIVE_ALL_RESTAURANTS:
      return merge({}, action.restaurants);
    case RECEIVE_SINGLE_FAVORITE:
      favorite = action.favorite;
      return merge({}, state, {[favorite.id]: favorite});
    case DESTROY_FAVORITE:
      favorite = action.favoriteId;
      return merge({}, state, {[favorite.id]: favorite});
    default:
      return state;
  }
};

export default restaurantReducer;
