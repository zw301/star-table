import React from 'react';
import { Route, Link, withRouter } from 'react-router-dom';
import SearchFormContainer from '../search/search_form_container';
import RestaurateurIndexItem from './restaurant_index_item';

import LoadingSpinner from "../loading_spinner/loading_spinner";

class RestaurantIndex extends React.Component {

  constructor(props){
    super(props);
    this.indexEl = this.indexEl.bind(this);
  }

  // componentDidMount() {
  //   window.scrollTo(0, 0);
  // }

  indexEl(){
    // if (this.props.loading) return <LoadingSpinner/>;
    if (this.props.restaurants.length === 0) {
      return (
        <div className="restaurant-search-error">
          <div>WE DID NOT FIND A MATCH FOR YOUR SEARCH.</div>
          <p>Sorry, we couldn't find any results.
          Try checking your spelling or using less specific keywords.</p>
        </div>
      );
    }
    return this.props.restaurants.map((restaurant, index) => (
      <RestaurateurIndexItem key={index} restaurant={restaurant} />
    ));
  }
  render() {

    return (
      <section id="main-body">
        <section className="restaurantList-img-container">
        </section>
        <section className="content">
          <div className="search-container">
            <SearchFormContainer />
          </div>
          <ul className='restaurant-list'>
            {this.indexEl()}
          </ul>
        </section>
      </section>
    );
  }
}

export default RestaurantIndex;
