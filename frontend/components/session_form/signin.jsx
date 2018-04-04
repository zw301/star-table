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
    this.props.login(this.state)
      .then(() => this.props.history.push('/'));
  }


  render() {
    return (
      <div>
        <h4>Log In</h4>
        <form onSubmit={this.handleSubmit}>

          <label>Email
            <input
              type="text"
              value={this.state.email}
              onChange={this.update('email')}
            />
          </label>
          <br />

          <label>Password
            <input
              type="password"
              value={this.state.password}
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
export default Login;
