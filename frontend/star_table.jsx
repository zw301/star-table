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
  fetchSingleRestaurant,
  createRestaurant,
  filteredRestaurants
} from './util/restaurant_api_util';


window.fetchAllRestaurants = fetchAllRestaurants;
window.fetchSingleRestaurant = fetchSingleRestaurant;
window.createRestaurant = createRestaurant;
window.filteredRestaurants = filteredRestaurants;


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

  const store = configureStore(preloadedState);
 // let store;
 //  if (window.currentUser) {
 //    const preloadedState = { currentUser: window.currentUser };
 //    store = configureStore(preloadedState);
 //    delete window.currentUser;
 //  } else {
 //    store = configureStore();
 //  }

  window.getState = store.getState;

  ReactDOM.render(<Root store={store} />, root);
});
