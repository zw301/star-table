import React from 'react';
import { Link } from 'react-router-dom';

class RestaurateurIndexItem extends React.Component {
  constructor(props){
    super(props);

    this.getStar = this.getStar.bind(this);
  }

  getStar(){
    let starCount = this.props.restaurant.star;
    const stars = [];

    for (let i = 0; i < starCount; i++) {
      stars.push(
        <img
          key={(""+Math.random()).substring(2,7)}
          src='https://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523389939/star.png' />
      );
    }
    return stars;
  }


  render(){
    let restaurant = this.props.restaurant;
    let sum = 0;
    for (var i = 0; i < restaurant.ratingArr.length; i++) {
      sum += restaurant.ratingArr[i];
    }

    let aveRating;
    if (sum === 0) {
      aveRating = "No rating yet!";
    } else {
      aveRating = (Math.round(sum / restaurant.ratingArr.length * 10) / 10).toFixed(1);
    }

    return (
      <Link to={`/restaurants/${restaurant.id}`}>
        <li className="restaurant-list-section">
            <div className="restaurant-logo-container">
              <img
                className="restaurant-logo"
                src={restaurant.logo}/>
            </div>
            <ul className="restaurant-detail-ul">
              <li className="restaurant-name">
                  <h5>{restaurant.name}</h5>
                  <span className="restaurant-star">{this.getStar()}</span>
              </li>
              <li>Rating: {aveRating}</li>
              <li>Cuisine: {restaurant.cuisine}</li>
              <li>Address: {restaurant.address}, {restaurant.city}, {restaurant.state}, {restaurant.zipcode}</li>
              <li>Contact: {restaurant.phoneNumber}</li>
            </ul>
        </li>
      </Link>
    );
  }
}

export default RestaurateurIndexItem;
