import React from 'react';

class SearchForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerms: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.searchRestaurants(this.state.searchTerms);
  }

  render() {
    return (
      <form className="search-form-container">
        <h3>Make restaurant reservations the easy way</h3>
        <div className="search-form">
          <input type="text"
            className="search-input search-select"
            value=""
            placeholder="2 People"/>

          <input type="text"
            className="search-input search-select"
            value=""
            placeholder="Apr 7, 2018"/>

          <input type="text"
            className="search-input search-select"
            value=""

            placeholder="7:00 PM"/>

          <input type="text"
            className="search-input"
            value={this.state.searchTerms}
            onChange={this.update('searchTerms')}
            placeholder="Location, Restaurant, or Cuisine"/>

          <input className="submit-button"
            onClick={this.handleSubmit}
            type="submit"
            value="Find a Table" />
        </div>
      </form>
    );
  }
}

export default SearchForm;
