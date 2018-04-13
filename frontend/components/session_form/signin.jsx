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
    this.handleDemo = this.handleDemo.bind(this);
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
      }
    );
  }

  handleDemo(event) {
    event.preventDefault();
    this.props.login({email:"guest@mail.com", password:'password'}).then(() => this.props.closeModal());
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
                id="email"
              />

              <input
                type="password"
                value={this.state.password}
                placeholder="Enter password *"
                onChange={this.update('password')}
                className="login-input"
                id="password"
              />

            <button type="submit" className="session-submit">Log In</button>

            <button className="session-submit demo-login" onClick={this.handleDemo}>Guest Login</button>

            <p className="changeForm">New to StarTable?  {this.props.changeForm}</p>
          </div>
        </form>
        <div onClick={this.props.closeModal} className="close-x">&times;</div>

      </div>
    );
  }


}
export default withRouter(Login);
