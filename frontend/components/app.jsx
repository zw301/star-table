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


import SearchFormContainer from './search/search_form_container';

import RestaurantIndexContainer from './restaurant/restaurant_index_container';
import AddRestaurant from './restaurant/add_restaurant_container';

import RestaurantDetailContainer from './restaurant/restaurant_detail_container';
import UserProfileContainer from './user/user_profile_container';

import { AuthRoute, ProtectedRoute } from '../util/route_util';


const App = () => (
  <div>
    <Modal />
    <header>
      <Link to="/restaurants/new" >For Restaurants</Link>
      <Route path="/" component={NavBarContainer} />
      <SearchFormContainer />
    </header>
    <Switch>
      <Route exact path="/restaurants/:restaurantId" component={RestaurantDetailContainer} />
      <Route exact path="/users/:userId" component={UserProfileContainer} />
      <Route path="/restaurants" component={RestaurantIndexContainer} />
      <Route path="/" component={Home} />
    </Switch>
    <ProtectedRoute path="/restaurants/new" component={AddRestaurant} />
  </div>
);

export default App;
