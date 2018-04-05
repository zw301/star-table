import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ currentUser, login, logout, openModal }) => {

  const sessionLinks = () => (
    <nav className="login-signup">
      <Link to="/" class="top-bar-logo-link">
        <h1 className="top-bar-logo-name">StarTable</h1>
      </Link>
      <div className="nav-session">
        <button className="btn btn-blue" onClick={() => openModal('signup')}>Sign up</button>
        <button className="btn" onClick={() => openModal('login')}>Sign in</button>
        <button className="btn btn-demo"
          onClick={() => login({email: "guest@mail.com", password:"password"})}>
          Demo
        </button>
      </div>
   </nav>
  );

  const personalGreeting = () => (
    <div className="login-signup">
      <div className="logo">
        <Link to="/" class="top-bar-logo-link">
          <h1 className="top-bar-logo-name">StarTable</h1>
        </Link>
      </div>
      <div className="nav-greeting">
        <h2 className="header-name">Hi, {currentUser.firstName}</h2>
        <button className="btn btn-blue log-out" onClick={logout}>Log Out</button>
      </div>
    </div>
  );

  return (
    currentUser ?
    personalGreeting(currentUser, logout) :
    sessionLinks()
  );
};


export default NavBar;
