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

  componentWillReceiveProps(nextProps) {
    if (nextProps.loggedIn) {
      this.props.history.push(`/`);
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state).then(
      () => {
        this.props.clearErrors();
      }
    );
  }

  renderErrors() {
    return(
      <ul>
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
      <div>
        <h4>Log In</h4>
        <form onSubmit={this.handleSubmit}>
          {this.renderErrors()}
          <label>
            <input
              type="text"
              value={this.state.email}
              placeholder="Enter email *"
              onChange={this.update('email')}
            />
          </label>
          <br />

          <label>
            <input
              type="password"
              value={this.state.password}
              placeholder="Enter password *"
              onChange={this.update('password')}
            />
          </label>
          <br />

          <button type="submit">Log In</button>
        </form>
      </div>
    );
  }


}
export default withRouter(Login);
