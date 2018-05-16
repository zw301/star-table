import { connect } from 'react-redux';

import RestaurantIndex from './restaurant_index';
import {
  requestAllRestaurants,
  requestSingleRestaurant,
  loadingRestaurants
} from '../../actions/restaurant_actions';

import {
  selectAllRestaurants
} from '../../reducers/selectors.js';


const mapStateToProps = state => ({
  currentUser:state.currentUser,
  // restaurants: selectAllRestaurants(state.entities),
  restaurants: Object.values(state.entities.restaurants),
  loading: state.ui.loading.indexLoading
});

const mapDispatchToProps = dispatch => ({
  requestAllRestaurants: () => dispatch(requestAllRestaurants()),
  requestSingleRestaurant: () => dispatch(requestSingleRestaurant()),

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantIndex);
