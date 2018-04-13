import { combineReducers } from 'redux';

import restaurantsReducer from './restaurant_reducer';
import reservationsReducer from './reservation_reducer';
import reviewsReducer from './review_reducer';
import favoritesReducer from './favorite_reducer';


export default combineReducers({
  restaurants: restaurantsReducer,
  reservations: reservationsReducer,
  reviews: reviewsReducer,
  favorites: favoritesReducer
});
