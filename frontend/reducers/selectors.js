import values from 'lodash/values';

export const selectAllRestaurants = (state, filters) => {

  return values(state.restaurants);

  // let filtered = [];

  // let arr = values(state.restaurants); //[{}, {}]

  // return filtered;

};
