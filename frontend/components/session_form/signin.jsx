import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push(`/`);
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state).then(
      (payload) => {
        this.props.closeModal();
        this.props.clearErrors();
        this.props.history.push(`/users/${payload.currentUser.id}`);
      }
    );
  }

  renderErrors() {
    return(
      <ul className="error-ul">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="login-form-container">
        <form onSubmit={this.handleSubmit}>
          <div className="login-form login-form-signin">
            <h4>Please Sign in</h4>
            {this.renderErrors()}

              <input
                type="text"
                value={this.state.email}
                placeholder="Enter email *"
                onChange={this.update('email')}
                className="login-input"
              />

              <input
                type="password"
                value={this.state.password}
                placeholder="Enter password *"
                onChange={this.update('password')}
                className="login-input"
              />

            <button type="submit" className="session-submit">Log In</button>
            <p className="changeForm">New to OpenTable?  {this.props.changeForm}</p>
          </div>
        </form>
        <div onClick={this.props.closeModal} className="close-x">&times;</div>

      </div>
    );
  }


}
export default withRouter(Login);
