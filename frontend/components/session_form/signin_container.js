import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';

import { login, receiveErrors } from '../../actions/session_actions';
import Signin from './signin';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'login',
    // navLink: <Link to="/signup">sign up instead</Link>,
  };
};

const mapDispatchToProps = dispatch => ({
  login: formUser => dispatch(login(formUser)),
  clearErrors: () => dispatch(receiveErrors([])),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signin);
