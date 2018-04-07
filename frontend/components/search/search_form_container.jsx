import React from 'react';
import { connect } from 'react-redux';
import SearchForm from './search_form';
import { requestSearchRestaurants } from '../../actions/search_actions';

const mapDispatchToProps = dispatch => ({
  requestSearchRestaurants: searchTerms =>
    dispatch(requestSearchRestaurants(searchTerms)),
});

export default connect (
  null,
  mapDispatchToProps
)(SearchForm);
