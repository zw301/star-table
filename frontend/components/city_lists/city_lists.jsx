import React from 'react';
import { connect } from 'react-redux';
import SearchForm from './search_form';
import { searchRestaurants } from '../../actions/restaurant_actions';

const mapDispatchToProps = dispatch => ({
  searchRestaurants: (searchTerms) =>
    dispatch(searchRestaurants(searchTerms)),
});

export default connect (
  null,
  mapDispatchToProps
)(SearchForm);
