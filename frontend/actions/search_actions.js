import { fetchSearchRestaurants } from '../util/restaurant_api_util';
import { receiveSingleRestaurant } from './restaurant_actions';

export const requestSearchRestaurants = searchTerms => dispatch => (
  fetchSearchRestaurants(searchTerms).then(restaurants =>
    dispatch(receiveSingleRestaurant(restaurants)))
);
