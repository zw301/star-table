import { combineReducers } from 'redux';

import session from './session_errors_reducer';
import restaurant from './restaurant_errors_reducer';
import reservation from './reservation_errors_reducer';
import review from './review_errors_reducer';
import favorite from './favorite_errors_reducer';

export default combineReducers({
  session,
  restaurant,
  reservation,
  review,
  favorite
});
