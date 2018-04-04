import { connect } from 'react-redux';

import { login, logout, signup } from '../../actions/session_actions';
import Signin from './signin';



const mapDispatchToProps = dispatch => ({
  login: formUser => dispatch(login(formUser)),
});

export default connect(
  null,
  mapDispatchToProps
)(Signin);
