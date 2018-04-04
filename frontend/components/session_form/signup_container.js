import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';

import { signup, receiveErrors} from '../../actions/session_actions';
import Signup from './signup';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'signup',
    // navLink: <Link to="/login">log in instead</Link>,
  };
};

const mapDispatchToProps = dispatch => ({
  signup: formUser => dispatch(signup(formUser)),
  receiveErrors: (errors) => dispatch(receiveErrors(errors)),
  clearErrors: () => dispatch(receiveErrors([])),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signup);
