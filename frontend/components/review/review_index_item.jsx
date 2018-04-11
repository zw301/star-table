import React from 'react';

class ReviewIndexItem extends React.Component {
  constructor(props){
    super(props);
  }
  render(){
    const review = this.props.review;
    // if(!review.user) {return null; }
    let createdAt = review.createdAt.slice(0,10);
    return (
      <li className="review-li">
        <span className="review-name">{review.user.first_name}</span>
        <span>Rating: {review.rating}</span>
        <span>-comment on {createdAt}</span>
        <p>Comment: {review.comment}</p>
      </li>
    );
  }
}

export default ReviewIndexItem;
