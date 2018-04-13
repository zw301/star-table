import { merge } from 'lodash';
import {
  RECEIVE_ALL_FAVORITE,
  RECEIVE_SINGLE_FAVORITE,
  DESTROY_FAVORITE,
} from '../actions/favorite_actions';


const FavoritesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ALL_FAVORITE:
      return action.favorites;
    // case RECEIVE_SINGLE_FAVORITE:
    //   const favorite = action.favorite;
    //   return merge({}, state, {[favorite.id]: favorite});
    case DESTROY_FAVORITE:
      let newState = merge({}, state);
      delete newState[action.favoriteId.id];
      return newState;
    default:
      return state;
  }
};

export default FavoritesReducer;
