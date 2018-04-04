{
  "username": "zz",
  "password": "123456",
  "email": "zz@z.com",
  "first_name": "Zi",
  "last_name": "Wang",
  "phone_number": "561-501-1688"
}


root.html.erb
<script id="bootstrap-current-user" type="text/javascript">
  <% if logged_in? %>
  	window.currentUser = <%= render("api/users/user.json.jbuilder",
  		user: current_user).html_safe %>
  <% end %>
</script>


nav_bar.jsx
import React from 'react';
import { Link } from 'react-router-dom';

export default ({ currentUser, logout }) => {
  const display = currentUser ? (
    <div>
      <p>Hello, {currentUser.first_name}</p>
      <button onClick={logout}>Log Out</button>
    </div>
  ) : (
    <div>
      <Link className="btn" to="/signup">Sign Up</Link><br />
      <Link className="btn" to="/login">Log In</Link>
    </div>
  );

  return (
    <header className="nav-bar">
      <h1 className="logo">Star Table</h1>
      <div>
        {display}
      </div>
    </header>
  );
};
