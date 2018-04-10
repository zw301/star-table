import React from 'react';
import { withRouter } from 'react-router-dom';
import {browserHistory} from 'react-router';

class SearchForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      seats: '',
      date: '',
      time: '',
      searchTerms: ''
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
      // .then(() => this.history.push("/restaurants"));
    this.props.history.push("/restaurants");
    // this.context.router.push("/restaurants");
    document.getElementById("search-content").value = "";
  }


  generatePartySizes() {
    const partySizes = [];
    partySizes.push(<option key="1" value="1">1 person</option>);
    for (let i = 2; i < 11; i++) {
      partySizes.push(<option key={i} value={i}>{i} people</option>);
    }
    partySizes.push(<option key="11" value={undefined}>Larger party</option>);
    return partySizes;
  }

  render() {
    return (
      <form className="search-form-container">
        <h3>Make restaurant reservations the easy way</h3>
        <div className="search-form">

          <input type="text"
            className="search-input search-select"
            value={this.state.seats}
            onChange={this.update('seats')}
            placeholder="2 People" />

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
            id="search-content"
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

export default withRouter(SearchForm);
