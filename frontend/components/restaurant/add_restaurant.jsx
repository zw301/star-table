import React from 'react';
import { Link, withRouter } from 'react-router-dom';


class AddRestaurant extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      address: "",
      city: "",
      state: "",
      zipcode: "",
      phone_number: "",
      cuisine: "",
      description: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  // componentWillReceiveProps(nextProps) {
  //
  // }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createRestaurant(this.state).then(
      (payload) => {
        // this.props.clearErrors();
        this.props.history.push(`/restaurants/${payload.restaurant.id}`);
      }
    );

  }

  renderErrors() {
    return(
      <ul className="error-ul">
        {this.props.errors.map((error, idx) => (
          <li key={`error-${idx}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="add-restaurant-container">

        <h4>Grow Your Business with StarTable</h4>
        <a href="/">Back to Homepage <i className="fas fa-arrow-right"></i></a>
        <form onSubmit={this.handleSubmit} className="add-restaurant-form">
          <div>
            {this.renderErrors()}
              <input
                type="text"
                value={this.state.name}
                placeholder="Restaurant Name *"
                onChange={this.update('name')}
                className="add-input"
              />

              <input
                type="text"
                value={this.state.cuisine}
                placeholder="Cuisine *"
                onChange={this.update('cuisine')}
                className="add-input"
              />

              <input
                type="text"
                value={this.state.description}
                placeholder="Description *"
                onChange={this.update('description')}
                className="add-input  add-input-1"
              />

              <input
                type="text"
                value={this.state.phone_number}
                placeholder="Phone Number *"
                onChange={this.update('phone_number')}
                className="add-input"
              />

              <input
                type="text"
                value={this.state.address}
                placeholder="Address *"
                onChange={this.update('address')}
                className="add-input"
              />

              <input
                type="text"
                value={this.state.city}
                placeholder="City *"
                onChange={this.update('city')}
                className="add-input add-input-3"
              />

              <input
                type="text"
                value={this.state.state}
                placeholder="State *"
                onChange={this.update('state')}
                className="add-input add-input-3"
              />

              <input
                type="text"
                value={this.state.zipcode}
                placeholder="Zipcode *"
                onChange={this.update('zipcode')}
                className="add-input add-input-3"
              />


            <button type="submit" className="add-submit">
              SUBMIT
            </button>
          </div>
        </form>

      </div>
    );
  }

}
export default withRouter(AddRestaurant);
