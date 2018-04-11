import React from 'react';
import { connect } from 'react-redux';
import { searchRestaurants } from '../../actions/restaurant_actions';

import CityLists from './city_lists';

const mapDispatchToProps = dispatch => ({
  searchRestaurants: (searchTerms) =>
    dispatch(searchRestaurants(searchTerms)),
});

export default connect (
  null,
  mapDispatchToProps
)(CityLists);
