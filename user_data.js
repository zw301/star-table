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
