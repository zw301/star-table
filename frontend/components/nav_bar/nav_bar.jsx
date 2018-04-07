import React from 'react';
import { Link } from 'react-router-dom';

import SearchFormContainer from '../search/search_form_container';

const NavBar = ({ currentUser, login, logout, openModal, history }) => {
  const handleLogout = () => (
    logout().then(() => (
      history.push("/")
    ))
  );

  const sessionLinks = () => (
    <nav className="navbar-container">
      <div className = "navbar-session">
        <Link to="/" className="top-bar-logo-link">
          <h1 className="top-bar-logo-name">StarTable</h1>
        </Link>
        <div className="nav-session">
          <button className="btn" onClick={() => openModal('signup')}>Sign up</button>
          <button className="btn" onClick={() => openModal('login')}>Sign in</button>
          <button className="btn btn-demo"
            onClick={() => login({email: "guest@mail.com", password:"password"})}>
            Demo
          </button>
        </div>
      </div>
   </nav>
  );

  const personalGreeting = () => (
    <nav className="navbar-container">
      <div className = "navbar-session">
        <Link to="/" className="top-bar-logo-link">
          <h1 className="top-bar-logo-name">StarTable</h1>
        </Link>
        <div className="nav-greeting">
          <h2 className="header-name">Hi, {currentUser.firstName}</h2>
          <Link className="btn" id="btn-profile" to={`/users/${currentUser.id}`}>My Profile</Link>
          <button className="btn btn-demo" onClick={handleLogout}>Log Out</button>
        </div>
      </div>
    </nav>
  );

  return (
    currentUser ?
    personalGreeting(currentUser, logout) :
    sessionLinks()
  );
};


export default NavBar;
