import { combineReducers } from 'redux';

import restaurantReducer from './restaurant_reducer';

export default combineReducers({
  restaurants: restaurantReducer,
});
