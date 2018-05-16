import React from 'react';
import { withRouter } from 'react-router-dom';



class CityLists extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerms: ''
    };
    this.handleClick = this.handleClick.bind(this);
  }


  handleClick(e) {
    e.preventDefault();
    this.props.openModal("loading");

    // Close the modal
    clearTimeout(this.timer);
    const that = this;
    this.timer = setTimeout(function() {
      that.props.closeModal()
    }, 600)

    let cityName = e.target.id;
    if(cityName.includes('_')) {
      cityName = cityName.split("_").join(" ");
    }


    this.setState({
      searchTerms: cityName
    }, () => (
      this.props.searchRestaurants(this.state.searchTerms)
      .then(() =>
        this.setState({
          searchTerms: ''
        })
      ).then(() => this.props.history.push("/restaurants"))
    ));
  }


  render() {
    return (
      <div className="cities">
        <h3>Featured Areas</h3>
        <div className="city-list">
          <div
            className="city-col"
            id="new_york"
            onClick={this.handleClick}>
            New York
          </div>
          <div
            className="city-col"
            id="los_angeles"
            onClick={this.handleClick}>
            Los Angeles
          </div>

          <div
            className="city-col"
            id="chicago"
            onClick={this.handleClick}>
            Chicago
          </div>
          <div
            className="city-col"
            id="san_francisco"
            onClick={this.handleClick}>
            San Francisco
          </div>
          <div
            className="city-col"
            id="washington"
            onClick={this.handleClick}>
            Washington DC
          </div>
          <div
            className="city-col"
            id="seattle"
            onClick={this.handleClick}>
            Seattle
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(CityLists);
