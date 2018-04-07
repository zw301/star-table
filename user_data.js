{
  "username": "zz",
  "password": "123456",
  "email": "zz@z.com",
  "first_name": "Zi",
  "last_name": "Wang",
  "phone_number": "561-501-1688"
}

{
  owner_id: 1,
  name: "Testing",
  address: "Testingr",
  star: "3",
  city: "New York",
  state: "NY",
  zipcode: "10019",
  phone_number: "111-823-9800",
  open_time: "10:00:00",
  close_time: "22:00:00",
  cuisine: "Chinese",
  description: "Takayama's appreciation for food started at a young age, growing up working for his family’s fish market in a town of Tochigi Prefecture, Japan. From his early years of delivering fresh sashimi to neighbors on his bicycle, to prepping and grilling hundreds of fish courses to cater weddings in high school, his relationship with food has always been a way of life."
}

//////////////search
const data = { location: 'SF'， cuision: "chinese";}

api util
export const searchRestaurants = (data) => {
  return $.ajax({
    method: 'GET',
    url: `/api/restaurants`,
    data: { data }
  });
};

this.state = {
  location: '',
  cuisine: ''
}

onSubmit() {
  this.searchRestaurants(this.state);
}


if params[:data]
  @restaurants = Restaurant.where...
else
  @restaurants = Restaurant.all

Restaurant.where(location: params[:location], cui)


//////////////
<ProtectedRoute path={`/users/${currentUser.id}/restaurants/new`} component={AddRestaurant} />

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
