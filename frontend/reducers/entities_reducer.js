import { combineReducers } from 'redux';

import restaurantReducer from './restaurant_reducer';
import reservationsReducer from './reservation_reducer';


export default combineReducers({
  restaurants: restaurantReducer,
  reservation: reservationsReducer
});
