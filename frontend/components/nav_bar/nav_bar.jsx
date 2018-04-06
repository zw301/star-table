import React from 'react';
import { Link } from 'react-router-dom';


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
          <button className="btn btn-blue" onClick={() => openModal('signup')}>Sign up</button>
          <button className="btn" onClick={() => openModal('login')}>Sign in</button>
          <button className="btn btn-demo"
            onClick={() => login({email: "guest@mail.com", password:"password"})}>
            Demo
          </button>
        </div>
      </div>
      <div id="navbar-hero">
        <img className="hero-img" src="https://mediastream.jumeirah.com/webimage/heroactual//globalassets/global/hotels-and-resorts/dubai/burj-al-arab/restaurants/al-muntaha/baa-al-muntaha-alaskan-king-crab-hero4.jpg" />
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
          <button className="btn btn-blue log-out" onClick={handleLogout}>Log Out</button>
        </div>
      </div>
      <div id="navbar-hero">
        <img className="hero-img" src="https://mediastream.jumeirah.com/webimage/heroactual//globalassets/global/hotels-and-resorts/dubai/burj-al-arab/restaurants/al-muntaha/baa-al-muntaha-alaskan-king-crab-hero4.jpg" />
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
