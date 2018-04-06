import { combineReducers } from 'redux';

import entitiesReducer from './entities_reducer';
import uiReducer from './ui_reducer';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import restaurantReducer from './restaurant_reducer';

const rootReducer = combineReducers({
  session: sessionReducer,
  errors: errorsReducer,
  ui: uiReducer,
  entities: entitiesReducer,
});

export default rootReducer;
