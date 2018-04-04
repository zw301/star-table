import React from 'react';

export default ({ user }) => (
  <header className="nav-bar">
    <h1>Star Table</h1>
    <h4>Welcome { user.username }!</h4>
  </header>
);
