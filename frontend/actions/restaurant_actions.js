import * as APIUtil from '../util/restaurant_api_util';

export const RECEIVE_ALL_RESTAURANTS = 'RECEIVE_ALL_RESTAURANTS';
export const RECEIVE_SINGLE_RESTAURANT = 'RECEIVE_SINGLE_RESTAURANT';

export const RECEIVE_RESTAURANT_ERRORS = 'RECEIVE_RESTAURANT_ERRORS';


const receiveAllRestaurants = (data) => {
  return {
    type: RECEIVE_ALL_RESTAURANTS,
    data
  };
};

const receiveSingleRestaurant = (restaurant) => {
  return {
    type: RECEIVE_SINGLE_RESTAURANT,
    restaurant
  };
};

export const receiveRestaurantErrors = (errors) => {
  return {
      type: RECEIVE_RESTAURANT_ERRORS,
      errors
  };
};


export const requestAllRestaurants = (data) => (dispatch) => {
  return APIUtil.fetchAllRestaurants(data)
    .then(restaurants => dispatch(receiveAllRestaurants(restaurants)));
};

export const requestSingleRestaurant = (id) => (dispatch) => {
  return APIUtil.fetchSingleRestaurant(id)
    .then(restaurant => dispatch(receiveSingleRestaurant(restaurant)));
};

export const createRestaurant = restaurant => dispatch => {
  return APIUtil.createRestaurant(restaurant).then(newRestaurant =>
    dispatch(receiveSingleRestaurant(newRestaurant)),
    errors => dispatch(receiveRestaurantErrors(errors.responseJSON)));
};
