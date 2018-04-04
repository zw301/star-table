import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: '',
      first_name: '',
      last_name: '',
      phone_number: '',
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


  // handleSubmit(e) {
  //   e.preventDefault();
  //   const user = this.state;
  //   this.props.processForm({user});
  // }

  handleSubmit(e) {
    e.preventDefault();
    this.props.signup(this.state)
      .then(() => this.props.history.push('/'));
  }
//
//   navLink() {
//     if (this.props.formType === 'login') {
//       return <Link to="/signup">sign up instead</Link>;
//     } else {
//       return <Link to="/login">log in instead</Link>;
//     }
//   }
//
//   renderErrors() {
//     return(
//       <ul>
//         {this.props.errors.map((error, i) => (
//           <li key={`error-${i}`}>
//             {error}
//           </li>
//         ))}
//       </ul>
//     );
//   }

  render() {
    return (
      <div>
        <h4>Sign Up</h4>
        <form onSubmit={this.handleSubmit}>
          <label>Username
            <input
              type="text"
              value={this.state.username}
              onChange={this.update('username')}
            />
          </label>
          <br />

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

          <label>First Name
            <input
              type="text"
              value={this.state.first_name}
              onChange={this.update('first_name')}
            />
          </label>
          <br />

          <label>Last Name
            <input
              type="text"
              value={this.state.last_name}
              onChange={this.update('last_name')}
            />
          </label>
          <br />

          <label>Phone
            <input
              type="text"
              value={this.state.phone_number}
              onChange={this.update('phone_number')}
            />
          </label>
          <br />

          <button type="submit">Sign Up</button>
        </form>
      </div>
    );
  }
//
//   render() {
//     return (
//       <div className="login-form-container">
//         <form onSubmit={this.handleSubmit} className="login-form-box">
//           Welcome to Star Table!
//           <br/>
//           Please {this.props.formType} or {this.navLink()}
//           {this.renderErrors()}
//           <div className="login-form">
//             <br/>
//             <label>Username:
//               <input type="text"
//                 value={this.state.username}
//                 onChange={this.update('username')}
//                 className="login-input"
//               />
//             </label>
//             <br/>
//             <label>Password:
//               <input type="password"
//                 value={this.state.password}
//                 onChange={this.update('password')}
//                 className="login-input"
//               />
//             </label>
//             <br/>
//             <input type="submit" value="Submit" />
//           </div>
//         </form>
//       </div>
//     );
//   }

}
export default SessionForm;
// export default withRouter(SessionForm);
