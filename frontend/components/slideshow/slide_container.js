import React from 'react';
import { connect } from 'react-redux';
import { searchRestaurants } from '../../actions/restaurant_actions';

import SimpleSlider from './slide';

const mapDispatchToProps = dispatch => ({
  searchRestaurants: (searchTerms) =>
    dispatch(searchRestaurants(searchTerms)),
});

export default connect(
  null,
  mapDispatchToProps
)(SimpleSlider);
