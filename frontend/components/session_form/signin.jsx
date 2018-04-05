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
      () => {
        this.props.closeModal();
        this.props.clearErrors();
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
            <h4>Welcome to StarTable!</h4>
            {this.renderErrors()}
            <label>
              <input
                type="text"
                value={this.state.email}
                placeholder="Enter email *"
                onChange={this.update('email')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="password"
                value={this.state.password}
                placeholder="Enter password *"
                onChange={this.update('password')}
                className="login-input"
              />
            </label>
            <br />

            <button type="submit" className="session-submit">Log In</button>
          </div>
        </form>
        <div onClick={this.props.closeModal} className="close-x">&times;</div>

      </div>
    );
  }


}
export default withRouter(Login);
