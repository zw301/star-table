import { connect } from 'react-redux';

import RestaurantIndex from './restaurant_index';
import { requestAllRestaurants } from '../../actions/restaurant_actions';
import { selectAllRestaurants } from '../../reducers/selectors.js';


const mapStateToProps = state => ({
  restaurants: selectAllRestaurants(state.entities),
});

const mapDispatchToProps = dispatch => ({
  requestAllRestaurants: () => dispatch(requestAllRestaurants())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantIndex);
