import React from 'react';

class ReviewIndexItem extends React.Component {
  constructor(props){
    super(props);
  }

  getRate() {
    let rating = this.props.review.rating;

    const rateArr = [];

    for (var i = 0; i < rating; i++) {
      rateArr.push (
        <img
          key={(""+Math.random()).substring(2,7)}
          src="http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523511580/rating_icon_full.png"
          />
      );
    }

    for (var i = rating; i < 5 ; i++) {
      rateArr.push (
        <img
          key={(""+Math.random()).substring(2,7)}
          src="http://res.cloudinary.com/chengzii/image/upload/c_scale,w_20/v1523511580/rating_icon_empty.png"
          />
      );
    }
    return rateArr;
  }


  render(){
    const review = this.props.review;


    let createdAt = review.createdAt.slice(0,10);
    return (
      <li className="review-li">
        <span className="review-name">{review.user.first_name}</span>
        <span className="rate-icon">{this.getRate()}</span>
        <span><i className="fa fa-share"></i> comment on {createdAt}</span>
        <p>{review.comment}</p>
      </li>
    );
  }
}

export default ReviewIndexItem;
