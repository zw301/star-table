//React
import React from 'react';
import ReactDOM from 'react-dom';
//Components
import Root from './components/root';
import configureStore from './store/store';


// import { signup, login, logout } from './actions/session_actions';
// import { signup, login, logout } from './util/session_api_util';


// window.login = login;
// window.signup = signup;
// window.logout = logout;


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
