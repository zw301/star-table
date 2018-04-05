import React from 'react';
import { Link, withRouter } from 'react-router-dom';


class AddRestaurant extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      address: "",
      star: 0,
      city: "",
      state: "",
      zipcode: "",
      phone_number: "",
      open_time: "",
      close_time: "",
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
    if (this.state.openTime > this.state.closeTime) {
      this.props.receiveErrors(["Open time is after Close time."]);
    } else {
      this.props.createRestaurant(this.state).then(
        () => {
          this.props.clearErrors();
        }
      );
    }
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
        <form onSubmit={this.handleSubmit} className="">
          <div className="">
            <h4>Grow Your Business with StarTable</h4>

            {this.renderErrors()}
            <label>
              <input
                type="text"
                value={this.state.name}
                placeholder="Restaurant Name *"
                onChange={this.update('name')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.address}
                placeholder="Address *"
                onChange={this.update('address')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.star}
                placeholder="Michelin star *"
                onChange={this.update('star')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.city}
                placeholder="City *"
                onChange={this.update('city')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.state}
                placeholder="State *"
                onChange={this.update('state')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.zipcode}
                placeholder="Zipcode *"
                onChange={this.update('zipcode')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.phone_number}
                placeholder="Phone Number *"
                onChange={this.update('phone_number')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.open_time}
                placeholder="Open Time *"
                onChange={this.update('open_time')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.close_time}
                placeholder="Close Time *"
                onChange={this.update('close_time')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.cuisine}
                placeholder="Cuisine *"
                onChange={this.update('cuisine')}
                className="login-input"
              />
            </label>
            <br />

            <label>
              <input
                type="text"
                value={this.state.description}
                placeholder="Description *"
                onChange={this.update('description')}
                className="login-input"
              />
            </label>
            <br />

            <button
              type="submit"
              className="session-submit"
            >
              Add your restaurant!
            </button>
          </div>
        </form>

      </div>
    );
  }

}
export default withRouter(AddRestaurant);
