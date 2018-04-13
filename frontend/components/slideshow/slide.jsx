import React from "react";
import Slider from "react-slick";

import { withRouter } from 'react-router-dom';

class SimpleSlider extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      searchTerms: ''
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    let cuisine = e.currentTarget.id;
    this.setState({
      searchTerms: cuisine
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
   var settings = {
     dots: true,
     slidesToShow: 4,
     slidesToScroll: 1,
     responsive: [
      {
        breakpoint: 1200,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1
        }
      },
      {
        breakpoint: 900,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
   };
   return (
     <Slider className="slider-container cuisine-slide" {...settings}>

       <div
        className="slider one"
        id="italian"
        onClick={this.handleClick}>
        <p>Best Italian</p>
        <p>Restaurateurs Around You</p>
       </div>

       <div
        className="slider two"
        id="seafood"
        onClick={this.handleClick}>
        <p>Best Seafood</p>
        <p>Restaurateurs Around You</p>
       </div>

       <div
        className="slider three"
        id="contemporary"
        onClick={this.handleClick}>
        <p>Best Contemporary American</p>
        <p>Restaurateurs Around You</p>
       </div>

       <div
        className="slider four"
        id="japanese"
        onClick={this.handleClick}>
        <p>Best Japanese</p>
        <p>Restaurateurs Around You</p>
       </div>

       <div
        className="slider five"
        id="french"
        onClick={this.handleClick}>
        <p>Best French</p>
        <p>Restaurateurs Around You</p>
       </div>

     </Slider>
   );
 }
}

export default withRouter(SimpleSlider);
