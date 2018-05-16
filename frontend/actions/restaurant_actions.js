import * as APIUtil from '../util/restaurant_api_util';

export const RECEIVE_ALL_RESTAURANTS = 'RECEIVE_ALL_RESTAURANTS';
export const RECEIVE_SINGLE_RESTAURANT = 'RECEIVE_SINGLE_RESTAURANT';

export const RECEIVE_RESTAURANT_ERRORS = 'RECEIVE_RESTAURANT_ERRORS';

export const LOADING_RESTAURANT = "LOADING_RESTAURANT";
export const LOADING_RESTAURANTS = "LOADING_RESTAURANTS";


export const loadingRestaurant = () => ({
  type: LOADING_RESTAURANT
});

export const loadingRestaurants = () => ({
  type: LOADING_RESTAURANTS
});


const receiveAllRestaurants = (restaurants) => {
  return {
    type: RECEIVE_ALL_RESTAURANTS,
    restaurants
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



export const requestAllRestaurants = () => (dispatch) => {
  dispatch(loadingRestaurants());
  return APIUtil.fetchAllRestaurants()
    .then(restaurants => dispatch(receiveAllRestaurants(restaurants)));
};

export const requestSingleRestaurant = (id) => (dispatch) => {
  dispatch(loadingRestaurant());
  return APIUtil.fetchSingleRestaurant(id)
    .then(restaurant => dispatch(receiveSingleRestaurant(restaurant)));
};

export const createRestaurant = restaurant => dispatch => {
  return APIUtil.createRestaurant(restaurant).then(newRestaurant =>
    dispatch(receiveSingleRestaurant(newRestaurant)),
    errors => dispatch(receiveRestaurantErrors(errors.responseJSON)));
};

export const searchRestaurants = searchTerms => dispatch => {
  dispatch(loadingRestaurants());
  return APIUtil.fetchSearchRestaurants(searchTerms).then(searchResult =>
    dispatch(receiveAllRestaurants(searchResult)),
    errors => dispatch(receiveRestaurantErrors(errors.responseJSON)));
};

//
// export const searchRestaurants = searchTerms => dispatch => (
//   APIUtil.fetchSearchRestaurants(searchTerms)
//          .then(searchResult => (dispatch(receiveAllRestaurants(searchResult)))),
//          err => (dispatch(receiveRestaurantErrors(err.responseJSON)))
// );
