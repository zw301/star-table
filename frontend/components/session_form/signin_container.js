import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';

import { login, receiveErrors } from '../../actions/session_actions';
import Signin from './signin';
import { openModal, closeModal } from '../../actions/modal_actions';



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
  closeModal: () => dispatch(closeModal()),
  changeForm: (
     <a className="changeForm-link"
       onClick={() => dispatch(openModal('signup'))}>
       Create an account
     </a>
  ),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signin);
