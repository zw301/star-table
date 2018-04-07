import React from 'react';

class SearchForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      search: {
        city: '' ,
        cuisine: '',
        restaurant: '',
        time: '',
        num_people: '',
        date: new Date(),
      }
    };
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(e) {
    this.setState({
      search: Object.assign(
        {},
        this.state.search,
        { [e.target.id]: e.target.value }
      )
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    let city = document.getElementById("city");
    let restaurant = document.getElementById("restaurant");
    let cuisine = document.getElementById("cuisine");
    this.setState({
      search: Object.assign(
        {},
        this.state.search,
        {
          city: city.value,
          restaurant: restaurant.value,
          cuisine: cuisine.value,
        }
      )
    });
    this.props.requestSearchRestaurants(this.state);
  }

  render() {
    return (
      <div>
        <h1 className="search-form">Search</h1>
        <form>
          <input
            type="text"
            placeholder="city"
          />

          <input
            type="text"
            placeholder="cusine"
          />

          <input
            type="text"
            placeholder="star"
          />

          <input type="submit" value="Search" />
        </form>
      </div>
    );
  }
}

export default SearchForm;
