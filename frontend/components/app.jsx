import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';


import Home from './home/home';
// import WelcomeBar from './nav_bar/welcome_bar_container';
import NavBarContainer from './nav_bar/nav_bar_container';
import SessionFormContainer from './session_form/session_form_container';
// import SearchContainer from './search/search_container';
// import BenchShowContainer from './bench_show/bench_show_container';
// import BenchFormContainer from './bench_form/bench_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const Protected = () => (<h3>Protected Page</h3>);
const Public = () => (<h3>Public Page</h3>);

const App = () => (
  <div>
    <header>
      <Route path="/" component={NavBarContainer} />
    </header>
    <Route exact path="/" component={Home} />
    <Switch>
      <AuthRoute exact path="/login" component={SessionFormContainer} />
      <AuthRoute exact path="/signup" component={SessionFormContainer} />
      <ProtectedRoute exact path="/protected" component={Protected} />
      <Route exact path="/public" component={Public} />
    </Switch>
  </div>
);

export default App;
