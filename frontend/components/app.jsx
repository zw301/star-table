import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import Modal from './modal/modal';


import Home from './home/home';
import NavBarContainer from './nav_bar/nav_bar_container';
import SignupContainer from './session_form/signup_container';
import SigninContainer from './session_form/signin_container';
// import SearchContainer from './search/search_container';
import RestaurantIndexContainer from './restaurant/restaurant_index_container';
import AddRestaurant from './restaurant/add_restaurant_container';

import RestaurantDetailContainer from './restaurant/restaurant_detail_container';

import { AuthRoute, ProtectedRoute } from '../util/route_util';


const App = () => (
  <div>
    <Modal />
    <header>
      <Route path="/" component={NavBarContainer} />
    </header>
    <main>
      <Route exact path="/restaurants" component={RestaurantIndexContainer} />
    </main>
    <ProtectedRoute path="/restaurants/new" component={AddRestaurant} />
    <Route exact path="/restaurants/:restaurantId" component={RestaurantDetailContainer} />
    <Link to="/restaurants/new" >For Restaurants</Link>
  </div>
);

export default App;
