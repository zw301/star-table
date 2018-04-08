import { combineReducers } from 'redux';

import restaurantReducer from './restaurant_reducer';
import reservationReducer from './reservation_reducer';


export default combineReducers({
  restaurants: restaurantReducer,
  reservations: reservationReducer
});
