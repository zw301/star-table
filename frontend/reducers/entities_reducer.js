import { combineReducers } from 'redux';

import restaurantReducer from './restaurant_reducer';
import reservationReducer from './reservation_reducer';
import reviewReducer from './review_reducer';


export default combineReducers({
  restaurants: restaurantReducer,
  reservations: reservationReducer,
  reviews: reviewReducer
});
