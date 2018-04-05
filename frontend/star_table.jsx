//React
import React from 'react';
import ReactDOM from 'react-dom';
//Components
import Root from './components/root';
import configureStore from './store/store';


// TODO: test
// import { signup, login, logout } from './util/session_api_util';
import {
  fetchAllRestaurants,
  searchRestaurants,
  fetchSingleRestaurant,
  createRestaurant
} from './util/restaurant_api_util';


window.fetchAllRestaurants = fetchAllRestaurants;
window.searchRestaurants = searchRestaurants;
window.fetchSingleRestaurant = fetchSingleRestaurant;
window.createRestaurant = createRestaurant;


document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  }

  // let store = configureStore();
  const store = configureStore(preloadedState);

  window.getState = store.getState;

  ReactDOM.render(<Root store={store} />, root);
});
