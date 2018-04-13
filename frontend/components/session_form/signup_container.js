import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';

import { login, signup, receiveErrors} from '../../actions/session_actions';
import Signup from './signup';

import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'signup',
    // navLink: <Link to="/login">log in instead</Link>,
  };
};

const mapDispatchToProps = dispatch => ({
  signup: formUser => dispatch(signup(formUser)),
  login: formUser => dispatch(login(formUser)),
  receiveErrors: (errors) => dispatch(receiveErrors(errors)),
  clearErrors: () => dispatch(receiveErrors([])),
  closeModal: () => dispatch(closeModal()),
  changeForm: (
     <a className="changeForm-link"
       onClick={() => dispatch(openModal('login'))}>
       Login here!
     </a>
   ),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signup);
