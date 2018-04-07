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
      <form>
        <h1>Make restaurant reservations the easy way</h1>
        <div className="search-bar">
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
